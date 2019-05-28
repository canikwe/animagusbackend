require 'rails_helper'

RSpec.describe Pet, type: :model do
  before(:all) do
    @pet = Pet.create(name: 'sprinkles', age: 10)
    Characteristic.level_one_char
    Characteristic.level_two_char
    Characteristic.level_three_char
  end

  after(:all) do
    puts 'pet tests finished -- test db cleaned'
    Characteristic.destroy_all
    Pet.destroy_all
    PetCharacteristic.destroy_all
  end

  context 'with new instantiation' do
    it 'correctly saves the name and age for the new pet' do
      expect(@pet.name).to eq("sprinkles")
      expect(@pet.age).to eq(10)
    end
  end

  context 'when #add_characteristics is called' do
    it 'creates new pet_characteristics for the pet corresponding to the correct level' do
      @pet.add_characteristics(1)
      expect(@pet.pet_characteristics.length).to eq(3)
      expect(@pet.pet_characteristics.first.characteristic.name).to eq('Feed')
    end
  end

  context 'when #kill_clock is called' do
    it 'displays the correct time without error' do
      expect(@pet.kill_clock).to be > Time.now
    end
  end
end
