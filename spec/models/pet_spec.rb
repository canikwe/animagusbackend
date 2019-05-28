require 'rails_helper'

RSpec.describe Pet, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'with new instantiation' do
    it 'correctly saves the name and age for the new pet' do
      pet = Pet.create(name: 'sprinkles', age: 10)
      expect(pet.name).to eq("sprinkles")
      expect(pet.age).to eq(10)
    end
  end
end
