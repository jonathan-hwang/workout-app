require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :firstName => "MyString",
      :lastName => "MyString",
      :email => "MyString",
      :age => "",
      :gender => ""
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_firstName[name=?]", "user[firstName]"
      assert_select "input#user_lastName[name=?]", "user[lastName]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_age[name=?]", "user[age]"
      assert_select "input#user_gender[name=?]", "user[gender]"
    end
  end
end
