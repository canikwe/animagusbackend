class AddCheckTimeToPetCharacteristics < ActiveRecord::Migration[5.2]
  def change
    add_column :pet_characteristics, :check_time, :timestamp
  end
end
