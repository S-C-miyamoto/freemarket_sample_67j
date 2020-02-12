class ItemsController < ApplicationController
  def index
  end

  def show
    @item = Item.find(params[:id])
    @seller = User.find(@item.seller_id)
    #@item = User.find(params[:id]).saling_items
    #@items = Item.where(seller_id: @item.seller_id)
    #@image = Image.where(params[:item_id]).includes(:images)
  end

  def edit
    @item = Item.find(params[:id])
    @items = Item.where(seller_id: @item.seller_id).includes(:images)
  end

  def update
    #@image = Image.find(item_id: @item.id)
    #@items = @item.update(item_params)
    @item = Item.find(params[:id])
    @item.update(item_parameter)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end


  def new
    @item = Item.new
    @category = Category.order("id ASC").limit(13)
    @brand = Brand.order("id ASC")
    @size = Size.order("id ASC")
    4.times {@item.images.build}
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
                                  images_attributes: [:image], shipping_attributes: [:shipping_area, :shipping_days, :shipping_method, :fee_burden])
  end
end
