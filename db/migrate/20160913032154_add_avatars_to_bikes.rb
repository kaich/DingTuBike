class AddAvatarsToBikes < ActiveRecord::Migration
  def change

    add_column :bikes, :avatars, :text
  end
end
