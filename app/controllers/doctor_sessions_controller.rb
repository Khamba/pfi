class DoctorSessionsController < ApplicationController
  def new
    @doctor_session = DoctorSession.new
  end

  def create
    doctor_session_params[:aadhar_number].gsub!(/\s+/, "")
    @doctor_session = DoctorSession.new(doctor_session_params)
    if @doctor_session.save
      flash[:success] = "Welcome back!"
      redirect_to root_path # TODO change later to doctor dashboard or whatever
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

  def doctor_session_params
    params.require(:doctor_session).permit(:aadhar_number, :password, :remember_me)
  end
end
