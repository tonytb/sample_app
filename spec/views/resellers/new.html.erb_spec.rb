require 'spec_helper'

describe "resellers/new.html.erb" do
  before(:each) do
    assign(:reseller, stub_model(Reseller,
      :first_name => "MyString",
      :last_name => "MyString",
      :company_name => "MyString",
      :terriorty => "MyString",
      :address => "MyString",
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new reseller form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => resellers_path, :method => "post" do
      assert_select "input#reseller_first_name", :name => "reseller[first_name]"
      assert_select "input#reseller_last_name", :name => "reseller[last_name]"
      assert_select "input#reseller_company_name", :name => "reseller[company_name]"
      assert_select "input#reseller_terriorty", :name => "reseller[terriorty]"
      assert_select "input#reseller_address", :name => "reseller[address]"
      assert_select "textarea#reseller_notes", :name => "reseller[notes]"
    end
  end
end
