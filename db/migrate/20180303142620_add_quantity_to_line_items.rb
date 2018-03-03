class AddQuantityToLineItems < ActiveRecord::Migration[5.1]
  # The only thing rails can't tell from the name is a reasonable default
  def change
    add_column :line_items, :quantity, :integer, default: 1
  end
end
