class RemoveProjectFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :project, :integer
  end
end
