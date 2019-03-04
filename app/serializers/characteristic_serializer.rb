class CharacteristicSerializer < ActiveModel::Serializer
  attributes :id, :level, :decr, :incr, :recurrence
end
