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

Pet.create(name: "Marbles", age: 2, happiness: 50, image: "https://res.cloudinary.com/teepublic/image/private/s--DCVz_RWZ--/t_Resized%20Artwork/c_fit,g_north_west,h_954,w_954/co_191919,e_outline:48/co_191919,e_outline:inner_fill:48/co_ffffff,e_outline:48/co_ffffff,e_outline:inner_fill:48/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_jpg,h_630,q_90,w_630/v1510214751/production/designs/2038835_1.jpg")

PetCharacteristic.create(pet_id: 1, characteristic_id: 1)
PetCharacteristic.create(pet_id: 1, characteristic_id: 2)
PetCharacteristic.create(pet_id: 1, characteristic_id: 3)