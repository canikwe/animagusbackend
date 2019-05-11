class PetCharacteristic < ApplicationRecord
  belongs_to :pet
  belongs_to :characteristic

  def calculate_check_time
    if self.check_time == nil
      #converting interval milliseconds to seconds for Ruby Time.now handling
      Time.now + (self.characteristic.interval / 1000)
    else
      #converting interval milliseconds to seconds for Ruby Time.now handling
      self.check_time + (self.characteristic.interval / 1000)
    end
  end

end
