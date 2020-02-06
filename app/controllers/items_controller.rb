class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @category = Category.order("id ASC").limit(13)
    @brand = Brand.order("id ASC")
    4.times {@item.images.build}
  end

  def create
    # @item = Item.new(item_parameter)
    @item = Item.new(item_parameter.merge(seller_id: current_user.id))
    if @item.save
      redirect_to :root
    end
  end

  def item_parameter
    params.require(:item).permit(:name, :state, :condition, :price, :category_id, :brand_id, images_attributes: [:image])
  end
end
