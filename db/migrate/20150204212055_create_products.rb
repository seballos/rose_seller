class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.boolean :offer
      t.string :caption
      t.text :description

      t.timestamps null: false
    end
  end
end
