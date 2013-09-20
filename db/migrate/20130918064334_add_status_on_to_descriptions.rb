class AddStatusOnToDescriptions < ActiveRecord::Migration
  def change
    add_column :descriptions, :status_on, :date
  end
end
