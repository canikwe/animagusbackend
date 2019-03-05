class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :happiness, :image, :active_status, :bio, :kill_clock
  has_many :characteristics
end
