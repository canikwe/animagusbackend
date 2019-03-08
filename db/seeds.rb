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
Characteristic.create(name: "Hunger", level: 1, decr: 10, incr: 10, interval: 10000, action: "Feed", action_time: "hungerTime", action_status: "fed")
Characteristic.create(name: "Cleanliness", level: 1, decr: 5, incr: 5, interval: 5000, action: "Clean", action_time: "cleanTime", action_status: "cleaned")
Characteristic.create(name: "Bordeom", level: 1, decr: 15, incr: 15, interval: 15000, action: "Play", action_time: "playTime", action_status: "played")

# level two characteristics
Characteristic.create(name: "Thirst", level: 2, decr: 5, incr: 5, interval: 10000, action: "Give Water", action_time: "drinkTime", action_status: "slacked")
Characteristic.create(name: "Health", level: 2, decr: 15, incr: 15, interval: 5000, action: "See Doctor", action_time: "docTime", action_status: "healed")
Characteristic.create(name: "Sleep", level: 2, decr: 10, incr: 10, interval: 15000, action: "Tuck In", action_time: "sleepTime", action_status: "slept")

# level three characteristics
Characteristic.create(name: "Social", level: 3, decr: 15, incr: 15, interval: 10000, action: "Talk to friends", action_time: "talkTime", action_status: "socialized")
Characteristic.create(name: "Holistic", level: 3, decr: 10, incr: 10, interval: 5000, action: "Do Yoga", action_time: "yogaTime", action_status: "namasted")
Characteristic.create(name: "Mood", level: 3, decr: 5, incr: 5, interval: 15000, action: "Cheer Up", action_time: "meditateTime", action_status: "cheered")






