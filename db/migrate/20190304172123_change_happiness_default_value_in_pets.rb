class ChangeHappinessDefaultValueInPets < ActiveRecord::Migration[5.2]
  def change
    change_column :pets, :happiness, :integer, default: 50
  end
end
