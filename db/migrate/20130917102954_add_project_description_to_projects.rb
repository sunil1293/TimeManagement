class AddProjectDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_discription, :text
  end
end
