class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.string :payment_type_name

      t.timestamps
    end
	PaymentType.create :id => 1, :payment_type_name => 'DonorTownSquare'
  end
end
