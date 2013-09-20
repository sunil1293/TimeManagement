class AddNumberOfHoursToDescriptions < ActiveRecord::Migration
  def change
    add_column :descriptions, :number_of_hours, :integer
  end
end
