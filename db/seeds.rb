# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Characteristic.destroy_all

# level one characteristics
Characteristic.create(name: "Hunger", level: 1, decr: 10, incr: 10, recurrence: 2, action: "Feed")
Characteristic.create(name: "Thirst", level: 1, decr: 5, incr: 5, recurrence: 2, action: "Give Water")
Characteristic.create(name: "Sleepiness", level: 1, decr: 15, incr: 15, recurrence: 2, action: "Tuck In")

# level two characteristics
Characteristic.create(name: "Boredom", level: 2, decr: 5, incr: 5, recurrence: 2, action: "Play")
Characteristic.create(name: "Health", level: 2, decr: 15, incr: 15, recurrence: 2, action: "See Doctor")
Characteristic.create(name: "Cleanliness", level: 2, decr: 10, incr: 10, recurrence: 2, action: "Clean")

# level three characteristics
Characteristic.create(name: "Social", level: 3, decr: 15, incr: 15, recurrence: 2, action: "Talk to friends")
Characteristic.create(name: "Holistic", level: 3, decr: 10, incr: 10, recurrence: 2, action: "Do Yoga")
Characteristic.create(name: "Mood", level: 3, decr: 5, incr: 5, recurrence: 2, action: "Cheer Up")






