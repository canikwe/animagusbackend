class PetCharacteristic < ApplicationRecord
  belongs_to :pet
  belongs_to :characteristic

  def calculate_check_time
    

    if self.check_time == nil
      #hard coding 20 seconds for testing purposes
      # Time.now + 20
      Time.now + (self.characteristic.interval / 1000)
    else
      #converting interval milliseconds to seconds for Ruby time handling
      # self.check_time + 20
      self.check_time + (self.characteristic.interval / 1000)
    end

    # if self.characteristic.name == "Hunger"
    #   if self.check_time == nil
    #     Time.now + self.characteristic.interval
    #   else
    #     self.check_time + self.characteristic.interval
    #   end
    # elsif self.characteristic.name == "Bordeom"
    #   if self.check_time == nil
    #     Time.now + self.characteristic.interval
    #   else
    #     self.check_time + self.characteristic.interval
    #   end
    #   # self.created_at + (60 * 4)
    # elsif self.characteristic.name == "Cleanliness"
    #   if self.check_time == nil
    #     Time.now + self.characteristic.interval
    #   else
    #     self.check_time + self.characteristic.interval
    #   end
    # end
  end
end
