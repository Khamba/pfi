class DoctorSearchController < ApplicationController

  def index
    @doctors = Doctor.joins(:specialities, hospitals: :address)
    if !params[:speciality].blank?
      @doctors = @doctors.where('specialities.id = ?', params[:speciality]).references(:specialities)
    end
    if !params[:state].blank?
      @doctors = @doctors.where('addresses.state = ?', params[:state]).references(:addresses)
      if !params[:city].blank?
        @doctors = @doctors.where('addresses.city = ?', params[:city]).references(:addresses)
      end
    end
    @doctors = @doctors.distinct
  end

  def cities_by_state
    @cities = Address.where(state: params[:state]).pluck(:city)
    render json: @cities
  end

end
