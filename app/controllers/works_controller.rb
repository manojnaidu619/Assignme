class WorksController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :get_id, only: [:edit, :update, :destroy, :show]    # before_filter = before_action
  before_action :make_sure_user_filled_bio, except: [:show]

  def new
    @work = Work.new
    @url = {action: 'create'}
    @submit_label = 'Post'
  end

  def create
    @work = current_user.works.build(work_params)
     if @work.save
       flash[:notice] = 'Work posted!'
       redirect_to root_path
     else
       render 'new'
     end
  end

  def edit
    @url = {action: 'update'}
    @submit_label = 'Update'
  end

  def show
     @work_user_bio = @work.user.bio     # For sql optimization
  end

  def update
     if @work.update(work_params)
       flash[:notice] = 'Work successfully updated!'
       redirect_to root_path
     else
       render 'new'
     end
  end

  def destroy
    @work.delete
    redirect_to root_path
  end

  private

  def work_params
    params.require(:work).permit(:id, :title, :description, :price, :work_end_at)
  end

  def get_id
    @work = Work.find(params[:id])
  end

  def make_sure_user_filled_bio
    @bio = current_user.bio.attributes               # attributes methods converts a record to Hash
    if @bio.has_value?(nil) or @bio.has_value?("")        # Checking for nil/empty values
      flash[:notice] = 'Fill in your bio to continue...'
      redirect_to edit_bio_path(current_user.bio)
      # flash[:success] = 'Fill up the details before posting new work!'        # Demo in layout file
    end
  end

end
