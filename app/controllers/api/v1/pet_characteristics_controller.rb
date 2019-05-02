class Api::V1::PetCharacteristicsController < ApplicationController
  before_action :get_pet_characteristic

  def update
    
    @pet_characteristic.update(pet_characteristic_params)
    render json: @pet_characteristic
  end

  private
  def pet_characteristic_params
    params.require(:pet_characteristic).permit(:check_time, :action_status)
  end

  def get_pet_characteristic
    @pet_characteristic = PetCharacteristic.find(params[:id])    
  end
end
