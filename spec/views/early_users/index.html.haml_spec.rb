require 'spec_helper'

describe "early_users/index" do
  before(:each) do
    assign(:early_users, [
      stub_model(EarlyUser,
        :email => "Email"
      ),
      stub_model(EarlyUser,
        :email => "Email"
      )
    ])
  end

  it "renders a list of early_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
