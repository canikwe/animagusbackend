class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :happiness, :image, :active_status
  has_many :characteristics
end
