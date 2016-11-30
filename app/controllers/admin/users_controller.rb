class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.all
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def update
    respond_to do |format|
      @user = User.find_by_id(params[:id])
      if @user.update(user_params)
        format.html { redirect_to [:admin, @user], notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to [:admin, @user], notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    @users = User.where("name LIKE ?", "%#{params[:name]}%")
  end

  def deleted
    @users_deleted = User.only_deleted
  end


  private
  def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
  end
end
