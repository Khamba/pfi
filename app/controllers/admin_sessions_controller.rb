class AdminSessionsController < ApplicationController
  def new
    @admin_session = AdminSession.new
  end

  def create
    @admin_session = AdminSession.new(admin_session_params.merge(remember_me: true))
    if @admin_session.save
      flash[:success] = "Welcome back!"
      redirect_to root_path # TODO change later to admin dashboard or whatever
    else
      render :new
    end
  end

  def destroy
    user_session.destroy
    flash[:success] = "Goodbye!"
    redirect_to root_path
  end

  private

  def admin_session_params
    params.require(:admin_session).permit(:email, :password)
  end
end
