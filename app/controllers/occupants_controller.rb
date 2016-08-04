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


  def edit
    @occupant = Occupant.find(params[:id])
  end

  
  def update
    @occupant = Occupant.find(params[:id])
    @occupant.update(occupant_params)

    redirect_to occupant_path(@occupant)
  end

  def destroy
    @occupant = Occupant.find(params[:id])
    @occupant.destroy

    redirect_to occupant_path(@occupant)
  end

  private
  def occupant_params
    params.require(:occupant).permit(:name, :age)
  end

end
