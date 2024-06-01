class OrdersController < ApplicationController
  def add_to_cart
    @order = current_order
    @order_item = @order.order_items.find_or_initialize_by(product_id: params[:product_id])
    @order_item.quantity ||= 1
    @order_item.quantity += params[:quantity].to_i
    if @order_item.save
      redirect_to product_path(params[:product_id]), notice: 'Item added to cart.'
    else
      redirect_to product_path(params[:product_id]), alert: 'Failed to add item to cart.'
    end
  end

  def index
    @order = current_order
    @order_items = @order.order_items
  end

  def remove_from_cart
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    if @order_item.destroy
      redirect_to orders_path, notice: 'Item removed from cart.'
    else
      redirect_to orders_path, alert: 'Failed to remove item from cart.'
    end
  end

  def update_quantity
    @order_item = current_order.order_items.find(params[:id])
    if @order_item.update(quantity: params[:quantity])
      redirect_to orders_path, notice: 'Quantity updated.'
    else
      redirect_to orders_path, alert: 'Failed to update quantity.'
    end
  end

  def checkout
    # Simulate processing payment using Stripe
    token = params[:stripeToken]
    if token
      # Here you would typically use the Stripe API to process the payment.
      # For this example, we are just going to assume the payment succeeded.

      @order = current_order
      @order.update(status: 'complete', user_id: current_user.id, order_date: Time.current)

      session[:order_id] = nil
      redirect_to root_path, notice: 'Order placed successfully.'
    else
      redirect_to orders_path, alert: 'Payment failed. Please try again.'
    end
  end

  private

  def current_order
    if session[:order_id]
      begin
        Order.find(session[:order_id])
      rescue ActiveRecord::RecordNotFound
        session[:order_id] = nil
        create_new_order
      end
    else
      create_new_order
    end
  end

  def create_new_order
    order = Order.create(user: current_user, status: 'pending')
    session[:order_id] = order.id
    order
  end
end
