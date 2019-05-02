class AddLevelColumnToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :level, :integer, default: 1
  end
end
