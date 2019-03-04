class CreatePetAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_attributes do |t|
      t.integer :pet_id
      t.integer :attribute_id

      t.timestamps
    end
  end
end
