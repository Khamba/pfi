class PatientSessionsController < ApplicationController
  def new
    @patient_session = PatientSession.new
  end

  def create
    patient_session_params[:aadhar_number].gsub!(/\s+/, "")
    @patient_session = PatientSession.new(patient_session_params.merge(remember_me: true))
    if @patient_session.save
      flash[:success] = "Welcome back!"
      redirect_to root_path # TODO change later to patient dashboard or whatever
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

  def patient_session_params
    params.require(:patient_session).permit(:aadhar_number, :password)
  end
end
