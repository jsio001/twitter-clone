class AddAvatarToProfile < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :user, foreign_key: true, index: true
  end

  def up
    add_attachment :profiles, :avatar
  end

  def down
    remove_attachment :profiles, :avatar
  end
  
end
