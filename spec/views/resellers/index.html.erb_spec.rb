require 'spec_helper'

describe "resellers/index.html.erb" do
  before(:each) do
    assign(:resellers, [
      stub_model(Reseller,
        :first_name => "First Name",
        :last_name => "Last Name",
        :company_name => "Company Name",
        :terriorty => "Terriorty",
        :address => "Address",
        :notes => "MyText"
      ),
      stub_model(Reseller,
        :first_name => "First Name",
        :last_name => "Last Name",
        :company_name => "Company Name",
        :terriorty => "Terriorty",
        :address => "Address",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of resellers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Terriorty".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
