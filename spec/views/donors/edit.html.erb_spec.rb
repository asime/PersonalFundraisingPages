require 'spec_helper'

describe "donors/edit" do
  before(:each) do
    @donor = assign(:donor, stub_model(Donor,
      :username => "MyString"
    ))
  end

  it "renders the edit donor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => donors_path(@donor), :method => "post" do
      assert_select "input#donor_username", :name => "donor[username]"
    end
  end
end
