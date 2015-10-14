class CreateShiftDetails < ActiveRecord::Migration
  def change
    create_table :shift_details do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :shift_name
      t.text :description
      t.references :users, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
