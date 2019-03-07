# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Characteristic.create(name: "Hunger", level: 1, decr: 10, incr: 10, recurrence: 2, action: "Feed")
Characteristic.create(name: "Thirst", level: 1, decr: 10, incr: 10, recurrence: 2, action: "Give Water")
Characteristic.create(name: "Sleepiness", level: 1, decr: 10, incr: 10, recurrence: 2, action: "Tuck In")


