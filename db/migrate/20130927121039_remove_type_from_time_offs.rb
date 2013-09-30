class RemoveTypeFromTimeOffs < ActiveRecord::Migration
  def change
    remove_column :time_offs, :type, :string
  end
end
