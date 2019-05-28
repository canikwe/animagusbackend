class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :happiness, :image, :active_status, :bio, :kill_clock, :level
  has_many :pet_characteristics

end
