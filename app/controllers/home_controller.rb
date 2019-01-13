class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:desk]

  def index
    redirect_to desk_path if user_signed_in? or user_session
    @works = Work.all.order(created_at: :desc)
  end

  def desk
    @works = current_user.works.all.order(created_at: :desc)
  end

  def category_filter
    #render plain: params.inspect
    @category = Category.find(params[:id])
  end
end
