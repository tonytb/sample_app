require 'spec_helper'

describe "rewards/index.html.erb" do
  before(:each) do
    assign(:rewards, [
      stub_model(Reward,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :points => "Points"
      ),
      stub_model(Reward,
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :points => "Points"
      )
    ])
  end

  it "renders a list of rewards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Points".to_s, :count => 2
  end
end
