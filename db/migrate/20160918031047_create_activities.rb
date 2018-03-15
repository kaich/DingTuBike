class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.date :start_time
      t.date :end_time
      t.string :rule
      t.string :information

      t.timestamps null: false
    end
  end
end
