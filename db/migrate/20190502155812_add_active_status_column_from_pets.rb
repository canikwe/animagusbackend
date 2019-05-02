class AddActiveStatusColumnFromPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :active_status, :boolean, default: true
  end
end
