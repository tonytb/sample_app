require 'spec_helper'

describe "accounts/show.html.erb" do
  before(:each) do
    @account = assign(:account, stub_model(Account))
  end

  it "renders attributes in <p>" do
    render
  end
end
