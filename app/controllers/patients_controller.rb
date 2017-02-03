class PatientsController < ApplicationController

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patients_params)
    if @patient.save
      flash[:success] = "Account registered!"
      redirect_to root_path # TODO change later to patient dashboard or whatever
    else
      render :new
    end
  end

  private

  def patients_params
    params.require(:patient).permit(:name, :aadhar_number, :mobile_number, :email, :password, :password_confirmation)
  end

end
