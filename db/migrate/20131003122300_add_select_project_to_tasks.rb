class AddSelectProjectToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :select_project, :integer
  end
end
