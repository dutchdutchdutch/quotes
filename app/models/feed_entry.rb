# class FeedEntry < ActiveRecord::Base
  # attr_accessible :name, :published_at, :summary
  
  #def self.update_from_feed(feed_url)
   # feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    #feed.entries.each do |entry|
      #unless exists? :published_at => entry.published
        #create! (
          #:name    =>entry.username,
          #:summary =>entry.summary,
          #:published_at => entry.published
        #)
      #end
    #end
  #end
#end


class FeedEntry < ActiveRecord::Base
  def self.update_from_feed(feed_url)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries)
  end
  
  def self.update_from_feed_continuously(feed_url, delay_interval = 15.minutes)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries)
    loop do
      sleep delay_interval
      feed = Feedzirra::Feed.update(feed)
      add_entries(feed.new_entries) if feed.updated?
    end
  end
  
  private
  
  def self.add_entries(entries)
    entries.each do |entry|
      unless exists? :published_at => entry.published
        create!(
          :name    =>entry.username,
          :summary =>entry.summary,
          :published_at => entry.published
        )
      end
    end
  end
end