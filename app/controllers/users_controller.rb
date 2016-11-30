class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = User.find_by_id(current_user.id)
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    respond_to do |format|
      @user = User.find_by_id(params[:id])
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: 'Seu perfil foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
  end
end
