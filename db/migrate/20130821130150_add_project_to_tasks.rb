class AddProjectToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :project, :integer
  end
end
