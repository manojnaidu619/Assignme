class HomeController < ApplicationController
  def index
    redirect_to desk_path if user_signed_in? or user_session
  end

  def desk
    @works = Work.all.order(created_at: :desc)
  end
end
