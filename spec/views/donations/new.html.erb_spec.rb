require 'spec_helper'

describe "donations/new" do
  before(:each) do
    assign(:donation, stub_model(Donation,
      :amount => "9.99",
      :comments => "MyText"
    ).as_new_record)
  end

  it "renders new donation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => donations_path, :method => "post" do
      assert_select "input#donation_amount", :name => "donation[amount]"
      assert_select "textarea#donation_comments", :name => "donation[comments]"
    end
  end
end
