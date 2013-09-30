class RemoveTimeOffFromTimeOffs < ActiveRecord::Migration
  def change
    remove_column :time_offs, :time_off, :string
  end
end
