require 'spec_helper'

describe "products/new.html.erb" do
  before(:each) do
    assign(:product, stub_model(Product,
      :product_name => "MyString",
      :model => "MyString",
      :description => "MyString",
      :software => "MyString",
      :product_literature => "MyString",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_product_name", :name => "product[product_name]"
      assert_select "input#product_model", :name => "product[model]"
      assert_select "input#product_description", :name => "product[description]"
      assert_select "input#product_software", :name => "product[software]"
      assert_select "input#product_product_literature", :name => "product[product_literature]"
      assert_select "input#product_price", :name => "product[price]"
    end
  end
end
