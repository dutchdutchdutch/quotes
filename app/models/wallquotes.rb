class Wallquotes < ActiveRecord::Base
  attr_accessible :content, :favorite, :posted, :screen_name, :tweet_id

 def tester
   puts "hey now!"
 end
 
end