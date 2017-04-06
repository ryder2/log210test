class UserManagementController < ApplicationController
  before_filter :authenticate_user!
  before_filter {:ensure_directeur! || :ensure_coordonnateur!}
  before_action :set_usager, only: [:show, :edit, :update, :destroy]

  def index
  	@users = User.all
  end
  
  def new
	set_role
  end
  
  def create
	set_role
	@user = User.new(new_usager_params)
	if @user.save
	  redirect_to action: "index"
	else
      render :"new"
	end
  end
  
  def edit
    @user = User.find(params[:id])
	set_role
  end
  
  def update
	@user = User.find(params[:id])
    if @user.update(usager_params)
		redirect_to action: "index"
	else
		render :"edit"
	end
  end
  
  def destroy
    if !(@user == current_user)
	  @user.destroy
	end
	redirect_to action: "index"
  end
  
  # Use callbacks to share common setup or constraints between actions.
  private
  def set_usager
	set_role
    @user = User.find(params[:id])
  end
  
  private
  def set_role
	if (current_user.role_id == 0)
		@roles = Role.all
	end
	if (current_user.role_id == 1)
		@roles = Role.where(['id=1 OR id=2'])
	end
  end

  private
  def usager_params
	params[:user][:role_id] = params[:user][:role_id].to_f
	if params[:user][:password].blank?
		params.require(:user).permit(:name, :role_id, :email)
	else
		params.require(:user).permit(:name, :role_id, :email, :password, :password_confirmation)
	end
  end
  
  private
  def new_usager_params
	params[:user][:role_id] = params[:user][:role_id].to_f
    params.require(:user).permit(:name, :role_id, :email, :password, :password_confirmation)
  end
 
end
