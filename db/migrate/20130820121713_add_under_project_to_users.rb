class AddUnderProjectToUsers < ActiveRecord::Migration
  def change
    add_column :users, :under_project, :integer
  end
end
