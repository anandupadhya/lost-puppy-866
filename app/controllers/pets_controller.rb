class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all.reverse
  end

  def show
    # @pet = Pet.find(params[:id])
  end

  def new # display a form to post a new pet
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.found_on = Date.today
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render 'new'
    end
  end

  def edit
    # @pet = Pet.find(params[:id])
  end

  def update
    # @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render 'edit'
    end
  end

  def destroy
    # @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :address, :species)
  end

end
