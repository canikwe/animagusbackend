class Pet < ApplicationRecord
  has_many :pet_characteristics
  has_many :characteristics, through: :pet_characteristics
end
