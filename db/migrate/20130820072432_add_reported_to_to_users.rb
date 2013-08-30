class AddReportedToToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reported_to, :integer
  end
end
