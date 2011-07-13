require 'spec_helper'

describe "invitations/show.html.erb" do
  before(:each) do
    @invitation = assign(:invitation, stub_model(Invitation,
      :sender_id => 1,
      :receipient_email => "Receipient Email",
      :property => "Property",
      :token => "Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Receipient Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Property/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Token/)
  end
end
