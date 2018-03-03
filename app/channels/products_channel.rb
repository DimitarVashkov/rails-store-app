class ProductsChannel < ApplicationCable::Channel
  # Restart the server when making changes to action cable
  def subscribed
    stream_from "products"
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
