class Characteristic < ApplicationRecord
  has_many :pet_characteristics
  has_many :pets, through: :pet_characteristics

  # create level one characteristics
  def self.level_one_char
    Characteristic.create(name: "Feed", level: 1, decr: 10, incr: 10, interval: 20000, action: "feed", action_verb: "fed")
    Characteristic.create(name: "Clean", level: 1, decr: 5, incr: 5, interval: 30000, action: "clean", action_verb: "cleaned")
    Characteristic.create(name: "Play", level: 1, decr: 3, incr: 3, interval: 10000, action: "play with", action_verb: "played")
  end

# create level two characteristics
  def self.level_two_char
    Characteristic.create(name: "Thirst", level: 2, decr: 5, incr: 5, interval: 10000, action: "give water to", action_verb: "slacked")
    Characteristic.create(name: "Health", level: 2, decr: 15, incr: 15, interval: 5000, action: "is sick", action_verb: "healed")
    Characteristic.create(name: "Sleep", level: 2, decr: 10, incr: 10, interval: 15000, action: "tuck in", action_verb: "slept")
  end

# create level three characteristics
def self.level_three_char
  Characteristic.create(name: "Social", level: 3, decr: 15, incr: 15, interval: 10000, action: "be social with", action_verb: "socialized")
  Characteristic.create(name: "Holistic", level: 3, decr: 10, incr: 10, interval: 5000, action: "do yoga with", action_verb: "namasted")
  Characteristic.create(name: "Mood", level: 3, decr: 5, incr: 5, interval: 15000, action: "cheer up", action_verb: "cheered")
end

end
