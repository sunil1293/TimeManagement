class AddStatusToTimeOffs < ActiveRecord::Migration
  def change
    add_column :time_offs, :status, :string
  end
end
