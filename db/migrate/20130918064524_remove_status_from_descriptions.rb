class RemoveStatusFromDescriptions < ActiveRecord::Migration
  def change
    remove_column :descriptions, :status, :text
  end
end
