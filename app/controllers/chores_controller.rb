class ChoresController < ApplicationController

def index
  @chores = Chore.all
end

def new
  @occupant = Occupant.find(params[:occupant_id])
  @chore = Chore.new
end


def create
  @occupant = Occupant.find(params[:occupant_id])
  @chore = Chore.create!(chore_params.merge(occupant: @occupant))
  redirect_to occupant_chore_path(@occupant, @chore)
end

def show
  @chore = Chore.find(params[:id])
end

def edit
  @chore = Chore.find(params[:id])
end

def update
  @chore = Chore.find(params[:id])
  @occupant = Occupant.find(params[:occupant_id])
  @chore.update(chore_params.merge(occupant: @occupant))
  redirect_to occupant_chore_path(@chore.occupant, @chore)
end

def destroy
  @chore = Chore.find(params[:id])
  @chore.destroy
  redirect_to chores_path
end

private
  def chore_params
    params.require(:chore).permit(:task, :description, :occupant_id)
  end
end
