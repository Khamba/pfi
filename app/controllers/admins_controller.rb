class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admins_params)
    if @admin.save_without_session_maintenance
      flash[:success] = "Account registered!"
      redirect_to root_path # TODO change later to admin dashboard or whatever
    else
      render :new
    end
  end

  private

  def admins_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

end
