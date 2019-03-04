class PetCharacteristic < ApplicationRecord
  belongs_to :pet
  belongs_to :characteristic
end
