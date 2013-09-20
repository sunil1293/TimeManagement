class AddSelectProjectToDescriptions < ActiveRecord::Migration
  def change
    add_column :descriptions, :select_project, :integer
  end
end
