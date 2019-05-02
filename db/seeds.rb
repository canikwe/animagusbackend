# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Characteristic.destroy_all
Pet.destroy_all
PetCharacteristic.destroy_all

# level one characteristics
Characteristic.create(name: "Hunger", level: 1, decr: 10, incr: 10, interval: 10000, action: "feed", action_time: "hungerTime", action_verb: "fed")
Characteristic.create(name: "Cleanliness", level: 1, decr: 5, incr: 5, interval: 5000, action: "clean", action_time: "cleanTime", action_verb: "cleaned")
Characteristic.create(name: "Bordeom", level: 1, decr: 15, incr: 15, interval: 15000, action: "play with", action_time: "playTime", action_verb: "played")

# level two characteristics
Characteristic.create(name: "Thirst", level: 2, decr: 5, incr: 5, interval: 10000, action: "give water to", action_time: "drinkTime", action_verb: "slacked")
Characteristic.create(name: "Health", level: 2, decr: 15, incr: 15, interval: 5000, action: "is sick", action_time: "docTime", action_verb: "healed")
Characteristic.create(name: "Sleep", level: 2, decr: 10, incr: 10, interval: 15000, action: "tuck in", action_time: "sleepTime", action_verb: "slept")

# level three characteristics
Characteristic.create(name: "Social", level: 3, decr: 15, incr: 15, interval: 10000, action: "be social with", action_time: "talkTime", action_verb: "socialized")
Characteristic.create(name: "Holistic", level: 3, decr: 10, incr: 10, interval: 5000, action: "do yoga with", action_time: "yogaTime", action_verb: "namasted")
Characteristic.create(name: "Mood", level: 3, decr: 5, incr: 5, interval: 15000, action: "cheer up", action_time: "meditateTime", action_verb: "cheered")






