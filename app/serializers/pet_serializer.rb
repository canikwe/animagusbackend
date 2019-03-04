class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :happiness, :image
  has_many :characteristics
end
