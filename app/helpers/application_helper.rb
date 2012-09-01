module ApplicationHelper
  
  
# Page title formatting
    def title
      base_title = "Project Team Quotes"
      if @title.nil?
        base_title
      else
        "#{base_title} | #{@title}"
      end
    end    
end
