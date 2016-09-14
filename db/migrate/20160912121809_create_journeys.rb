class CreateJourneys < ActiveRecord::Migration
  def change
    create_table :journeys do |t|
      t.string :name
      t.string :content
      t.date :start_time
      t.date :end_time
      t.string :starting
      t.string :destination

      t.timestamps null: false
    end
  end
end
