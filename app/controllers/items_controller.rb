class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.new(item_parameter)
  end

  def item_parameter
    params.require(:item).permit(:name, :state, :condition, :price, product_images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
