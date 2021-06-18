class AddAmountToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :amount, :integer
  end
end
