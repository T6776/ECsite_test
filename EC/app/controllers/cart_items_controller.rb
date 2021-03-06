class CartItemsController < ApplicationController

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.save
    redirect_to cart_items_path
  end

  def index
    @cart_items = CartItem.all
  end

  def update
  end

  def destroy
  end

  def subtotal
    item.with_tax_price * amoun
  end

end


private
def cart_item_params
  params.require(:cart_item).permit(:item_id, :amount)
end

def set_cart
  @cart = current_cart
end