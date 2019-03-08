class AddColumnsToCharacteristics < ActiveRecord::Migration[5.2]
  def change
    add_column :characteristics, :action_time, :string
    add_column :characteristics, :action_status, :string
  end
end
