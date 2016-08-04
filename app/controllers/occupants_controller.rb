class OccupantsController < ApplicationController
  def index
    @occupants = Occupant.all
  end

  def new
    @occupant = Occupant.new
  end

  def create
    @occupant = Occupant.create!(occupant_params)

    redirect_to occupant_path(@occupant)
  end

  def show
    @occupant = Occupant.find(params[:id])
  end

end
