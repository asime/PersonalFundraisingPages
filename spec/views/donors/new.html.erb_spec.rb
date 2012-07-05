require 'spec_helper'

describe "donors/new" do
  before(:each) do
    assign(:donor, stub_model(Donor,
      :username => "MyString"
    ).as_new_record)
  end

  it "renders new donor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => donors_path, :method => "post" do
      assert_select "input#donor_username", :name => "donor[username]"
    end
  end
end
