class Api::V1::PetsController < ApplicationController
  before_action :get_pet, only: [:show, :update]
  def index
    @pets = Pet.all
    render json: @pets, status: :ok
  end

  def show
    if @pet.present?
      render json: @pet, status: :ok
    else
      head :not_found
    end
  end

  def create
    @pet = Pet.new
    @pet = Pet.create(pet_params)
    if @pet.save
      @pet.add_characteristics(1)
      render json: @pet, status: :created
    else
      render json: {errors: @pet.errors.full_messages}, status: :bad_request
    end
  end

  def update
    if @pet.present?
      if @pet.update(pet_params)
        render json: @pet, status: :ok
      else
        render json: @pet.errors.full_messages, status: :bad_request
      end
    else
      head :not_found
    end
  end


  private
  def pet_params
    params.require(:pet).permit(:name, :age, :image, :happiness, :active_status, :bio, :level)
  end

  def get_pet
    @pet = Pet.find_by(id: params[:id])    
  end

end
