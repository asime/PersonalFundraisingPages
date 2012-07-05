require 'spec_helper'

describe "donors/index" do
  before(:each) do
    assign(:donors, [
      stub_model(Donor,
        :username => "Username"
      ),
      stub_model(Donor,
        :username => "Username"
      )
    ])
  end

  it "renders a list of donors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
  end
end
