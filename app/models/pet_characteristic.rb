class PetCharacteristic < ApplicationRecord
  belongs_to :pet
  belongs_to :characteristic

  def calculate_check_time

    if self.characteristic.name == "Hunger"
      if self.check_time == nil
        Time.now + self.characteristic.interval
      else
        self.check_time + self.characteristic.interval
      end
    elsif self.characteristic.name == "Thirst"
      if self.check_time == nil
        Time.now + self.characteristic.interval
      else
        self.check_time + self.characteristic.interval
      end
      # self.created_at + (60 * 4)
    elsif self.characteristic.name == "Sleepiness"
      if self.check_time == nil
        Time.now + self.characteristic.interval
      else
        self.check_time + self.characteristic.interval
      end
    end
  end
end
