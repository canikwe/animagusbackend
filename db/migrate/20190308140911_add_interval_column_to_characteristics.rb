class AddIntervalColumnToCharacteristics < ActiveRecord::Migration[5.2]
  def change
    add_column :characteristics, :interval, :integer
  end
end
