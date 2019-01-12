class WorksController < ApplicationController
  before_action :authenticate_user!     
  before_action :get_id, only: [:edit, :update]

  def new
    @work = Work.new
    @url = {action: 'create'}
    @submit_label = 'Post'
  end

  def create
    @work = current_user.works.build(work_params)
     if @work.save
       redirect_to root_path
     else
       render 'new'
     end
  end

  def edit
    @url = {action: 'update'}
    @submit_label = 'Update'
  end

  def update
     if @work.update(work_params)
       redirect_to root_path
     else
       render 'new'
     end
  end

  private

  def work_params
    params.require(:work).permit(:id, :title, :description, :price)
  end

  def get_id
    @work = Work.find(params[:id])
  end

end
