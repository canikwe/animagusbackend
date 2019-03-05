class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :happiness, :image, :active_status, :bio
  has_many :characteristics
end
