class LineItem < ApplicationRecord
  # product:references and cart:belongs_to
  # are the same at model level
  #
  # If a table has any columns whose values consist of ID values
  # for another table, the model should have a belongs_to for each
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
