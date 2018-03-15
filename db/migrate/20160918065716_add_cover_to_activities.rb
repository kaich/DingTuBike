class AddCoverToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :cover, :string
  end
end
