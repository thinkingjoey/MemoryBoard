class WelcomeController < ApplicationController
  # before_action :authenticate_user!
  # def index
  #   if user_signed_in?
  #     redirect_to "/welcome/profile"
  # end
  def index
    if user_signed_in?
      redirect_to '/profile'
    end
  end

end
