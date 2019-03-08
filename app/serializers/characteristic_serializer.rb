class CharacteristicSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :decr, :incr, :recurrence, :action
  has_many :pet_characteristics
end
