class CreateFeedEntries < ActiveRecord::Migration
  def change
    create_table :feed_entries do |t|
      t.string :name
      t.text :summary
      t.datetime :published_at

      t.timestamps
    end
  end
end
