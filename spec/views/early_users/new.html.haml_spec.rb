require 'spec_helper'

describe "early_users/new" do
  before(:each) do
    assign(:early_user, stub_model(EarlyUser,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new early_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", early_users_path, "post" do
      assert_select "input#early_user_email[name=?]", "early_user[email]"
    end
  end
end
