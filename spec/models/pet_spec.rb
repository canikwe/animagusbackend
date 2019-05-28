require 'rails_helper'

RSpec.describe Pet, type: :model do
  before(:all) do
    @pet = Pet.create(name: 'sprinkles', age: 10)
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
    end
  end
end
