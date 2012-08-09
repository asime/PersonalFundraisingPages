require 'spec_helper'

describe "charities/edit" do
  before(:each) do
    @charity = assign(:charity, stub_model(Charity,
      :charity_name => "MyString",
      :street1 => "MyString",
      :street2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :twitter_handle => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :facebook_page => "MyString",
      :website_url => "MyString"
    ))
  end

  it "renders the edit charity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => charities_path(@charity), :method => "post" do
      assert_select "input#charity_charity_name", :name => "charity[charity_name]"
      assert_select "input#charity_street1", :name => "charity[street1]"
      assert_select "input#charity_street2", :name => "charity[street2]"
      assert_select "input#charity_city", :name => "charity[city]"
      assert_select "input#charity_state", :name => "charity[state]"
      assert_select "input#charity_zip", :name => "charity[zip]"
      assert_select "input#charity_twitter_handle", :name => "charity[twitter_handle]"
      assert_select "input#charity_phone", :name => "charity[phone]"
      assert_select "input#charity_email", :name => "charity[email]"
      assert_select "input#charity_facebook_page", :name => "charity[facebook_page]"
      assert_select "input#charity_website_url", :name => "charity[website_url]"
    end
  end
end
