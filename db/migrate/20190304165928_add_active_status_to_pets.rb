class AddActiveStatusToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :active_status, :string
  end
end
