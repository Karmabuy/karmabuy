class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :buyer_email
      t.string :seller_email
      t.string :guid
      t.integer :product_id

      t.timestamps
    end
  end
end
