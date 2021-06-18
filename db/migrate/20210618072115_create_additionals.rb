class CreateAdditionals < ActiveRecord::Migration[6.1]
  def change
    create_table :additionals do |t|
      t.string :color
      t.integer :product_age
      t.string :imperfections
      t.string :waranty
      t.string :condition
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
