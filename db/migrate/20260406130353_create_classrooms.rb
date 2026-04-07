class CreateApiV1Classrooms < ActiveRecord::Migration[8.1]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :cod
      t.integer :time_slot, null: false
      t.string :room

      t.timestamps
    end
  end
end
