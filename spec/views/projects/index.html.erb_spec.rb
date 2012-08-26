require 'spec_helper'

describe "projects/index.html.erb" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :hashtag => "Hashtag"
      ),
      stub_model(Project,
        :hashtag => "Hashtag"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hashtag".to_s, :count => 2
  end
end
