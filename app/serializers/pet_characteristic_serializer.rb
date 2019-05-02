class PetCharacteristicSerializer < ActiveModel::Serializer
  attributes :id, :pet_id, :characteristic_id, :name, :level, :decr, :incr, :action, :calculate_check_time, :created_at, :check_time, :action_status, :action_verb, :interval

  def name
    self.object.characteristic.name
  end

  def level
    self.object.characteristic.level
  end

  def decr
    self.object.characteristic.decr
  end

  def incr
    self.object.characteristic.incr
  end

  def action
    self.object.characteristic.action
  end

  def action_verb
    self.object.characteristic.action_verb
  end

  def interval
    self.object.characteristic.interval
  end
end
