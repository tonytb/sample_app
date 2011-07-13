require 'spec_helper'

describe "invitations/new.html.erb" do
  before(:each) do
    assign(:invitation, stub_model(Invitation,
      :sender_id => 1,
      :receipient_email => "MyString",
      :property => "MyString",
      :token => "MyString"
    ).as_new_record)
  end

  it "renders new invitation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invitations_path, :method => "post" do
      assert_select "input#invitation_sender_id", :name => "invitation[sender_id]"
      assert_select "input#invitation_receipient_email", :name => "invitation[receipient_email]"
      assert_select "input#invitation_property", :name => "invitation[property]"
      assert_select "input#invitation_token", :name => "invitation[token]"
    end
  end
end
