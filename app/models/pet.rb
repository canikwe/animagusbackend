class Pet < ApplicationRecord
  has_many :pet_characteristics
  has_many :characteristics, through: :pet_characteristics

  def kill_clock
    self.created_at + (60 * 5)
  end


end
