class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      # The price has 8 digits of significance
      # and 2 digits after the decimal point
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
