class Pet < ApplicationRecord
  has_many :pet_characteristics
  has_many :characteristics, through: :pet_characteristics

  validates :name, presence: true,  :on => :create

  def kill_clock
    self.created_at + (60 * 1)
  end

  def add_characteristics(level)
    Characteristic.all.each do |char|
      if char.level == level
        PetCharacteristic.create(pet: self, characteristic: char)
      end
    end
  end

end
