class AddAvatarsToBikes < ActiveRecord::Migration[5.0]
  def change

    add_column :bikes, :avatars, :text
  end
end
