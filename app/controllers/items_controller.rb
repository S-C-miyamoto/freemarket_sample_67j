class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @category = Category.order("id ASC").limit(13)
    @brand = Brand.order("id ASC")
    @size = Size.order("id ASC")
    @item.images.build
    @item.build_shipping
  end

  def create
    @item = Item.new(item_parameter.merge(seller_id: current_user.id))
    if @item.save
      redirect_to :root
    end
  end

  def item_parameter
    params.require(:item).permit(:name, :state, :condition, :price, :category_id, :brand_id, :size_id,
                                  images_attributes: [:image, :_destroy, :id], shipping_attributes: [:shipping_area, :shipping_days,:shipping_method, :fee_burden])
  end
end
