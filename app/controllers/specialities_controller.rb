class SpecialitiesController < ApplicationController

  def index
    @specialities = Speciality.all.order(:name).page(params[:page])
  end

  def show
    @speciality = Speciality.find(params[:id])
  end

  def new
    @speciality = Speciality.new
  end

  def create
    @speciality = Speciality.new(speciality_params)
    if @speciality.save
      flash[:success] = "New Speciality Added"
      redirect_to specialities_path
    else
      render:new
    end
  end

  def edit
    @speciality = Speciality.find(params[:id])
  end

  def update
    @speciality = Speciality.find(params[:id])
    if @speciality.update(speciality_params)
      flash[:success] = "Speciality Updated"
      redirect_to specialities_path
    else
      render :edit
    end
  end

  def destroy
    @speciality = Speciality.find(params[:id])
    @speciality.destroy
    flash[:success] = "Speciality has been deleted"
    redirect_to specialities_path
  end

  private

    def speciality_params
      params.require(:speciality).permit(:name)
    end

end
