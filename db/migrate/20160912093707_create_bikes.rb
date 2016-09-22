class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :made_address
      t.date :market_time
      t.float :price
      t.string :information
      t.references :bikeable , polymorphic: true , index: true

      t.timestamps null: false
    end
  end
end