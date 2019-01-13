class BioController < ApplicationController

  before_action :authenticate_user!

  def new
   @bio = Bio.new
   @url = {action: 'create'}          # passing to form partial
  end

 def create
   @bio = current_user.build_bio(bio_params)   # for has_one relation
    if @bio.save
      flash[:notice] = 'Successfully added Bio!'
      redirect_to root_path
    else
      render 'new'
    end
 end

  def edit
     @bio = Bio.find(params[:id])
     @url = {action: 'update'}      # passing to form partial
  end

  def update
    @bio = Bio.find(params[:id])
     if @bio.update(bio_params)     # Update user bio_params
       flash[:notice] = "Bio successfully Updated!" if @bio.changed?
       redirect_to root_path
     else
       render 'new'
     end
  end
 private

 def bio_params
   params.require(:bio).permit(:fullname, :username, :locality, :occupation, :contact_number, :college_school_name, :dob,
                  :user_id, :gender)
 end
end
