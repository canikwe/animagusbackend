require 'rails_helper'

RSpec.describe PetCharacteristic, type: :model do
  before(:all) do
    Characteristic.level_one_char
    Characteristic.level_two_char
    Characteristic.level_three_char

    @pet = Pet.create(name: 'sprinkles', age: 10)
    @pet.add_characteristics(1)
  end

  after(:all) do
    puts 'pet_characteristic tests finished -- test db cleaned'
    Characteristic.destroy_all
    Pet.destroy_all
    PetCharacteristic.destroy_all
  end

  context 'calculate_check_time' do
    it 'displays the correct time without error' do
      @pet = Pet.first
      expect(PetCharacteristic.first.calculate_check_time).to be > Time.now
    end
  end
end
