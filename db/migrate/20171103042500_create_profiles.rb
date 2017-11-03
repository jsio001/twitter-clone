class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.text :about_me
      t.timestamps
    end
  end
end
