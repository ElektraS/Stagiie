class UsersController < ApplicationController
  def index
    if params[:approved] == "true"
      @user = User.find_all_by_approved(true)
    else
      @user = User.all
    end
  end

  def validate
  	@user = User.find(params[:id])
    @user=@user.update_attribute('approved', 'true')
    redirect_to "/"
  end

 
end	