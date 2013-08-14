class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def show
  end
  
  def new
    @user = User.new
  end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to @user
  #   else
  #     @errors = @user.errors.full_messages
  #     render :new
  #   end
  # end

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user = User.find(params[:id])
  #   @user.update_attributes!(user_params)
  #   redirect_to @user
  # end

  # def destroy
  #   @user = User.find(params[:id]).destroy
  #   redirect_to :root
  # end

  private

  def user_params
    params.require(:user).permit!
  end
end
