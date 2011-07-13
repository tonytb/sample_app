require 'spec_helper'

describe "rewards/show.html.erb" do
  before(:each) do
    @reward = assign(:reward, stub_model(Reward,
      :title => "Title",
      :description => "MyText",
      :image_url => "Image Url",
      :points => "Points"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Points/)
  end
end
