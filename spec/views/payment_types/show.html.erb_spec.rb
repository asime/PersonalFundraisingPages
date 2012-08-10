require 'spec_helper'

describe "payment_types/show" do
  before(:each) do
    @payment_type = assign(:payment_type, stub_model(PaymentType,
      :payment_type_name => "Payment Type Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Payment Type Name/)
  end
end
