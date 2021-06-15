class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :buyer_id
      t.boolean :sold_out
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
