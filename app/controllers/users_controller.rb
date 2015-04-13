class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end

  def full_name
  if self.first_name.blank?
    self.email
  else
    self.first_name
  end
end
end
