class AddActionColumnToCharacteristics < ActiveRecord::Migration[5.2]
  def change
    add_column :characteristics, :action, :string
  end
end
