class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.text :status
      t.references :user, index: true

      t.timestamps
    end
  end
end
