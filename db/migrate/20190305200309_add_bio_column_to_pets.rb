class AddBioColumnToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :bio, :text
  end
end
