class AddDoneTaskToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :done_task, :boolean
  end
end
