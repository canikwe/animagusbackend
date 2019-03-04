class CreatePetCharacteristics < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_characteristics do |t|
      t.integer :pet_id
      t.integer :characteristic_id

      t.timestamps
    end
  end
end
