class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.integer :happiness
      t.string :image

      t.timestamps
    end
  end
end
