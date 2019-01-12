class WorksController < ApplicationController

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
    @work = Work.find(params[:id])
    @url = {action: 'update'}
    @submit_label = 'Update'
  end

  def update
    @work = Work.find(params[:id])
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

end
