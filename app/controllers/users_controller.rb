class UsersController < ApplicationController
  def index
    @users = User.where("fname LIKE ?", "%#{params[:keyword]}%")
    @user = User.all.uniq
  end
end
