class AddAttributesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nick, :string
    add_column :users, :birthday, :date
    add_column :users, :sex, :string
    add_column :users, :home_address, :string
    add_column :users, :qq_number, :string
    add_column :users, :phone, :string
    add_column :users, :signature, :string
    add_column :users, :intro, :string
    add_column :users, :avatar, :string
  end
end
