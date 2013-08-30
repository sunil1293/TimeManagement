class AddUnderProjectToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :under_project, :integer
  end
end
