class AddTweet < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.text :tweet, null: false
      t.timestamps
    end
  end
end
