class AddAmountToPayments < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :amount, :integer
  end
end
