class RemoveActiveStatusColumnFromPets < ActiveRecord::Migration[5.2]
  def change
    remove_column :pets, :active_status, :string
  end
end
