class Api::V1::PetsController < ApplicationController
  before_action :get_pet, only: [:show, :update]
  def index
    @pets = Pet.all
    render json: @pets
  end

  def show
    render json: @pet
  end

  def create
    @pet = Pet.new
    @pet = Pet.create(pet_params)
    if @pet.save
      PetCharacteristic.create(pet_id: @pet.id, characteristic_id: 1)
      PetCharacteristic.create(pet_id: @pet.id, characteristic_id: 2)
      PetCharacteristic.create(pet_id: @pet.id, characteristic_id: 3)
      render json: @pet, status: :accepted
    else
      render json: {errors: @pet.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @pet.update(pet_params)
    render json: @pet
  end


  private
  def pet_params
    params.require(:pet).permit(:name, :age, :image, :happiness, :active_status, :bio)
  end

  def get_pet
    @pet = Pet.find(params[:id])    
  end

end
