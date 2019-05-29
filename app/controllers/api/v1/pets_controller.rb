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
      @pet.add_characteristics(1)
      render json: @pet, status: :created
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
    params.require(:pet).permit(:name, :age, :image, :happiness, :active_status, :bio, :level)
  end

  def get_pet
    @pet = Pet.find(params[:id])    
  end

end
