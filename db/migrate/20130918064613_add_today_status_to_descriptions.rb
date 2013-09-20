class AddTodayStatusToDescriptions < ActiveRecord::Migration
  def change
    add_column :descriptions, :today_status, :text
  end
end
