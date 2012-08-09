require 'spec_helper'

describe "charities/show" do
  before(:each) do
    @charity = assign(:charity, stub_model(Charity,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Charity Name/)
    rendered.should match(/Street1/)
    rendered.should match(/Street2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip/)
    rendered.should match(/Twitter Handle/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Facebook Page/)
    rendered.should match(/Website Url/)
  end
end
