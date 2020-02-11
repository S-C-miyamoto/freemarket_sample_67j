class ItemsController < ApplicationController
  def index
  end

  def show
    @item = Item.find(params[:id])
    #@items = Item.where(seller_id: @item.seller_id).includes(:images)
    #@image = Image.where(params[])
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
    redirect_to item_poth(@item)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

  def new
    @item = Item.new
    @item.images.new
    3.times {@item.images.build}
  end

  def create
    @item = Item.new(item_parameter)
    @item = Item.new(item_parameter.merge(seller_id: current_user.id))
    @item.save
  end

  def item_parameter
    params.require(:item).permit(:name, :state, :condition, :price, images_attributes: [:image, :_destroy, :id])
  end
end
