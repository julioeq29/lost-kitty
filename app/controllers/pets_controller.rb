class PetsController < ApplicationController

  before_action :find_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    Pet.create(pet_params)
    redirect_to pets_path
  end

  def edit
  end

  def update
     @pet.update(pet_params)
     redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :found_on)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end
end
