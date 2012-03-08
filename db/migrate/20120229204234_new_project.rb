class NewProject < ActiveRecord::Migration
  def up

    create_table :projects do |t|
      t.string :name, :null => :false
      t.string :description
      t.string :observations

      t.timestamps
    end

  end

  def down

    drop_table :projects

  end
end
