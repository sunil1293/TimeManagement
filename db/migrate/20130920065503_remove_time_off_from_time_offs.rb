class RemoveTimeOffFromTimeOffs < ActiveRecord::Migration
  def change
    remove_column :time_offs, :time_off_string, :string
  end
end
