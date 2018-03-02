# Concerns let us share common code between controllers!
#
# The method I used before was to write code in one of the helpers
# and include it in the application_controller
#
# P.S. we mark the method as private so Rails doesn't make it
# available as an action on the controller
module CurrentCart

  private

  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end