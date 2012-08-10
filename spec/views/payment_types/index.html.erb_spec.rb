require 'spec_helper'

describe "payment_types/index" do
  before(:each) do
    assign(:payment_types, [
      stub_model(PaymentType,
        :payment_type_name => "Payment Type Name"
      ),
      stub_model(PaymentType,
        :payment_type_name => "Payment Type Name"
      )
    ])
  end

  it "renders a list of payment_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Payment Type Name".to_s, :count => 2
  end
end
