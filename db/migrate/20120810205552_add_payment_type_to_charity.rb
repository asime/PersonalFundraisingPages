class AddPaymentTypeToCharity < ActiveRecord::Migration
  change_table :charities do |t|
	t.references :payment_type
  end
end
