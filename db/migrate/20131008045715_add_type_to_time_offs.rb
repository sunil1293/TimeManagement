class AddTypeToTimeOffs < ActiveRecord::Migration
  def change
    add_column :time_offs, :type, :string
  end
end
