class DoctorsController < ApplicationController

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctors_params)
    if @doctor.save
      flash[:success] = "Account registered!"
      redirect_to root_path # TODO change later to doctor dashboard or whatever
    else
      render :new
    end
  end

  def basic_info
    @doctor = Doctor.find(params[:id])
    @specialities = @doctor.specialities
    @hospitals = @doctor.hospitals
  end

  def update_basic_info
    @doctor = Doctor.find(params[:id])
    if params[:doctor] && params[:doctor][:specialities]
      @doctor.doctor_specialities.destroy_all
      params[:doctor][:specialities].each do |speciality_id|
        @doctor.doctor_specialities.create(speciality_id: speciality_id)
      end
    end
    if params[:doctor] && params[:doctor][:hospitals]
      @doctor.doctor_hospitals.destroy_all
      params[:doctor][:hospitals].each do |hospital_id|
        @doctor.doctor_hospitals.create(hospital_id: hospital_id)
      end
    end
    flash[:success] = "Info successfully updated"
    redirect_to basic_info_doctor_url
  end

  private

  def doctors_params
    params.require(:doctor).permit(:name, :aadhar_number, :mobile_number, :email, :password, :password_confirmation)
  end

end
