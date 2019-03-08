class PetCharacteristic < ApplicationRecord
  belongs_to :pet
  belongs_to :characteristic

  def calculate_check_time

    if self.characteristic.name == "Hunger"
      if self.check_time == nil
        Time.now + (20 * 1)
      else
        self.check_time + (20 * 1)
      end
    elsif self.characteristic.name == "Thirst"
      if self.check_time == nil
        Time.now + (10 * 1)
      else
        self.check_time + (10 * 1)
      end
      # self.created_at + (60 * 4)
    elsif self.characteristic.name == "Sleepiness"
      if self.check_time == nil
        Time.now + (30 * 1)
      else
        self.check_time + (30 * 1)
      end
    end
  end
end
