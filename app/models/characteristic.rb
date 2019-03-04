class Characteristic < ApplicationRecord
  has_many :pet_characteristics
  has_many :pets, through: :pet_characteristics
end
