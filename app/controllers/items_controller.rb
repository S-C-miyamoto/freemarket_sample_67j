class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    3.times {@item.images.build}
  end

  def create
    @item = Item.new(item_parameter)
    @item = Item.new(item_parameter.merge(seller_id: current_user.id))
    @item.save
  end

  def item_parameter
    params.require(:item).permit(:name, :state, :condition, :price, images_attributes: [:image])
  end
end
