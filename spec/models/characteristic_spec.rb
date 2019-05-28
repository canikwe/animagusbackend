require 'rails_helper'

RSpec.describe Characteristic, type: :model do
  context 'when create characteristic methods are called' do

    it 'does not have any characteristics before methods are called' do
      expect(Characteristic.all.length).to eq(0)      
    end

    it 'creates the level one characteristics' do
      Characteristic.level_one_char
      expect(Characteristic.all.length).to eq(3)
      expect(Characteristic.first.level).to eq(1)
    end

    it 'creates the level two characteristics' do
      Characteristic.level_two_char
      expect(Characteristic.all.length).to eq(3)
      expect(Characteristic.first.level).to eq(2)
    end

    it 'creates the level three characteristics' do
      Characteristic.level_three_char
      expect(Characteristic.all.length).to eq(3)
      expect(Characteristic.first.level).to eq(3)
    end
  end
end
