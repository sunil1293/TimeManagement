class AddClientDetailsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :client_details, :text
  end
end
