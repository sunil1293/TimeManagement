class AddUserIdToTimeOffs < ActiveRecord::Migration
  def change
    add_column :time_offs, :user_id, :integer
  end
end
