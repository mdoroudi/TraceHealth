require 'spec_helper'

describe "early_users/edit" do
  before(:each) do
    @early_user = assign(:early_user, stub_model(EarlyUser,
      :email => "MyString"
    ))
  end

  it "renders the edit early_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", early_user_path(@early_user), "post" do
      assert_select "input#early_user_email[name=?]", "early_user[email]"
    end
  end
end
