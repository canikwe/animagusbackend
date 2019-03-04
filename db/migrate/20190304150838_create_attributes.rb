class CreateAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :attributes do |t|
      t.string :name
      t.integer :level
      t.integer :decr
      t.integer :incr
      t.integer :recurrence

      t.timestamps
    end
  end
end
