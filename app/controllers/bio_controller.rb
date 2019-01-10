class BioController < ApplicationController
  def new
   @bio = Bio.new
  end

 def create
   @bio = current_user.build_bio(bio_params)   # for has_one relation
    if @bio.save
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
