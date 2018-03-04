class OrderMailer < ApplicationMailer
  # quite similar to a controller
  default from: 'Tim Vashkov <store@example.com>'
  def received(order)
    @order = order

    mail to: @order.email, subject: 'Order confirmation'
  end

  def shipped(order)
    @order = order
    mail to: @order.mail, subject: 'Order Shipped!'
  end
end
