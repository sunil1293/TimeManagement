class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.date :expected_end_date

      t.timestamps
    end
  end
end
