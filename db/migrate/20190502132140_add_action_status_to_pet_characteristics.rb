class AddActionStatusToPetCharacteristics < ActiveRecord::Migration[5.2]
  def change
    add_column :pet_characteristics, :action_status, :boolean, default: false
  end
end
