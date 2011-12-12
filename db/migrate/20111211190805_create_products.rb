class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :amount
      t.integer :hours
      t.integer :minutes
      t.string :description

      t.timestamps
    end
  end
end
