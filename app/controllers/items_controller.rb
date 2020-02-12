class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.where(buyer_id: nil).order("created_at DESC").limit(3)
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

  def show
  end

  def edit
    @category = Category.order("id ASC").limit(13)
    @brand = Brand.order("id ASC")
    @size = Size.order("id ASC")
    @shipping = Shipping.order("id ASC")
  end

  def update
    if @item.update(item_parameter)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

  private

  def item_parameter
    params.require(:item).permit(:name, :state, :condition, :price, :category_id, :brand_id, :size_id, images_attributes: [:image, :_destroy, :id], shipping_attributes: [:shipping_area, :shipping_days,:shipping_method, :fee_burden])
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
