class AddCoverToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :cover, :string
  end
end
