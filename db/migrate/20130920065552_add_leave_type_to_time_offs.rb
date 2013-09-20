class AddLeaveTypeToTimeOffs < ActiveRecord::Migration
  def change
    add_column :time_offs, :leave_type, :string
  end
end
