require 'spec_helper'

describe "invitations/index.html.erb" do
  before(:each) do
    assign(:invitations, [
      stub_model(Invitation,
        :sender_id => 1,
        :receipient_email => "Receipient Email",
        :property => "Property",
        :token => "Token"
      ),
      stub_model(Invitation,
        :sender_id => 1,
        :receipient_email => "Receipient Email",
        :property => "Property",
        :token => "Token"
      )
    ])
  end

  it "renders a list of invitations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Receipient Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Property".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Token".to_s, :count => 2
  end
end
