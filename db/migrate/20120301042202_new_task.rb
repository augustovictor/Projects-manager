class NewTask < ActiveRecord::Migration
  def up
    create_table :tasks do |t|
      t.integer :priority, :null => :false, :default => 0
      t.string :name, :null => :false
      t.string :observations

      t.timestamps
    end
  end

  def down
    drop_table :tasks
  end
end
