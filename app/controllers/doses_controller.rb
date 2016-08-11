class DosesController < ApplicationController
before_action :find_dose, only: [:destroy]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to doses_path
  end

  private

  def find_dose
    @cocktail = Cocktail.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:name, :ingredient, :cocktail)
  end

end
