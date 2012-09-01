class CreateWallquotes < ActiveRecord::Migration
  def change
    create_table :wallquotes do |t|
      t.string :tweet_id
      t.string :screen_name
      t.text :content
      t.datetime :posted
      t.boolean :favorite

      t.timestamps
    end
  end
end
