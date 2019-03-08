class PetCharacteristicSerializer < ActiveModel::Serializer
  attributes :id, :pet_id, :characteristic_id, :name, :level, :decr, :incr, :action, :calculate_check_time, :created_at, :check_time, :action_time, :action_status, :interval

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

  def action_status
    self.object.characteristic.action_status
  end

  def action_time
    self.object.characteristic.action_time
  end

  def interval
    self.object.characteristic.interval
  end
end
