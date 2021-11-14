class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  def edit
  end

  def update
  end

  def with_tax_price
    (price * 1.1).floor
  end

end

private

  def item_params
    params.require(:item).permit(:name, :introduction, :price)
  end