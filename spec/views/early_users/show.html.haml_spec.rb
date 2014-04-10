require 'spec_helper'

describe "early_users/show" do
  before(:each) do
    @early_user = assign(:early_user, stub_model(EarlyUser,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
