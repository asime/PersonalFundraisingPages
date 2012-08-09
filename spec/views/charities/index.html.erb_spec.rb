require 'spec_helper'

describe "charities/index" do
  before(:each) do
    assign(:charities, [
      stub_model(Charity,
        :charity_name => "Charity Name",
        :street1 => "Street1",
        :street2 => "Street2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :twitter_handle => "Twitter Handle",
        :phone => "Phone",
        :email => "Email",
        :facebook_page => "Facebook Page",
        :website_url => "Website Url"
      ),
      stub_model(Charity,
        :charity_name => "Charity Name",
        :street1 => "Street1",
        :street2 => "Street2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :twitter_handle => "Twitter Handle",
        :phone => "Phone",
        :email => "Email",
        :facebook_page => "Facebook Page",
        :website_url => "Website Url"
      )
    ])
  end

  it "renders a list of charities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Charity Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street1".to_s, :count => 2
    assert_select "tr>td", :text => "Street2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter Handle".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook Page".to_s, :count => 2
    assert_select "tr>td", :text => "Website Url".to_s, :count => 2
  end
end
