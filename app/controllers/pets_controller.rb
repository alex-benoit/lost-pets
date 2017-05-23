class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    pet_params = params.require(:pet).permit(:name, :category, :found)
    new_pet = Pet.new(pet_params)
    new_pet.save
    redirect_to pets_path
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
