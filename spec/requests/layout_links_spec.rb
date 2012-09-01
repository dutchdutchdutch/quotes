require 'spec_helper'

describe "LayoutLinks" do
   #describe "GET /layout_links" do
    # it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get layout_links_index_path
      #response.status.should be(200)
    #end
   #end

   it "should have a home page at '/'" do
     get '/'
     respons.should have_selector('title', :content => "Home")
   end
   
   it "should have a projects page at '/projects'" do
      get '/projects'
      respons.should have_selector('title', :content => "Project")
    end
    
    it "should have an about page at '/about'" do
        get '/about'
        respons.should have_selector('title', :content => "About")
    end

    it "should have a  Quote Wall at '/wall'" do
            get '/wall'
            respons.should have_selector('title', :content => "Wall")
    end
    
     it "should have a  signup page at '/signup'" do
              get '/signup'
              respons.should have_selector('title', :content => "Sign up")
      end

end

