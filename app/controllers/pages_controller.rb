class PagesController < ApplicationController
  
  
  def home
    @title = "Home"
  end
  
  def styles
      @title = "Wall"
   end

  def about
     @title = "About"
  end

  def contact
     @title = "Contact"
  end
  
  def styles
     @title = "Styles"
  end
  
 
  
end
