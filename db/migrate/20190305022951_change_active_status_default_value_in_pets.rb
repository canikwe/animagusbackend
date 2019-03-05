class ChangeActiveStatusDefaultValueInPets < ActiveRecord::Migration[5.2]
  def change
    change_column :pets, :active_status, :string, default: "active"
  end
end
