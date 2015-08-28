class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :points
      t.boolean :availability, default: true

      t.timestamps
    end
  end
end
