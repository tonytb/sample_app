require 'spec_helper'

describe "rewards/edit.html.erb" do
  before(:each) do
    @reward = assign(:reward, stub_model(Reward,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :points => "MyString"
    ))
  end

  it "renders the edit reward form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rewards_path(@reward), :method => "post" do
      assert_select "input#reward_title", :name => "reward[title]"
      assert_select "textarea#reward_description", :name => "reward[description]"
      assert_select "input#reward_image_url", :name => "reward[image_url]"
      assert_select "input#reward_points", :name => "reward[points]"
    end
  end
end
