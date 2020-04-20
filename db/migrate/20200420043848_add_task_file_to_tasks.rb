class AddTaskFileToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :task_file, :text
  end
end
