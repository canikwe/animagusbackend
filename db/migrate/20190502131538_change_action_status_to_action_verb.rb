class ChangeActionStatusToActionVerb < ActiveRecord::Migration[5.2]
  def change
    rename_column :characteristics, :action_status, :action_verb
  end

end
