class AddSelectTaskToDescriptions < ActiveRecord::Migration
  def change
    add_column :descriptions, :select_task, :integer
  end
end
