class CreateTimeOffs < ActiveRecord::Migration
  def change
    create_table :time_offs do |t|
      t.string :time_off
      t.string :type
      t.date :date
      t.integer :number_of_hours
      t.date :from
      t.date :to
      t.text :reason

      t.timestamps
    end
  end
end
