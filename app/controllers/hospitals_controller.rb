class HospitalsController < ApplicationController

  def index
    @hospitals = Hospital.includes(:address).all.order(:name).page(params[:page])
  end

  def show
    @hospital = Hospital.find(params[:id])
  end

  def new
    @hospital = Hospital.new
    @address = @hospital.build_address
  end

  def create
    @hospital = Hospital.new(hospital_params)
    if @hospital.save
      flash[:success] = "New Hospital Added"
      redirect_to hospitals_path
    else
      render:new
    end
  end

  def edit
    @hospital = Hospital.find(params[:id])
  end

  def update
    @hospital = Hospital.find(params[:id])
    if @hospital.update(hospital_params)
      flash[:success] = "Hospital Updated"
      redirect_to hospitals_path
    else
      render :edit
    end
  end

  def destroy
    @hospital = Hospital.find(params[:id])
    @hospital.destroy
    flash[:success] = "Hospital has been deleted"
    redirect_to hospitals_path
  end

  private

    def hospital_params
      params.require(:hospital).permit(:name, address_attributes: [:state, :city, :pincode, :address_lines])
    end

end
