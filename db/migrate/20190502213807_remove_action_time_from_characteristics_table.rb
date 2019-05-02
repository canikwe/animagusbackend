class RemoveActionTimeFromCharacteristicsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :characteristics, :action_time, :string
  end
end
