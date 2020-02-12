class PurchaseController < ApplicationController
  
  before_action :redirect_to_sign_in, only: [:pay, :buy]
  before_action :set_item, only: [:pay, :buy, :done, :redirect_to_item_show_if_own_item, :redirect_to_item_show_if_item_sold, :transaction_comp]
  before_action :redirect_to_item_show_if_own_item, only: [:pay, :buy]
  before_action :redirect_to_item_show_if_item_sold, only: [:pay, :buy]
  before_action :redirect_to_credit_new, only: [:pay, :buy]
  before_action :get_payjp_info, only: [:pay, :buy]

  require 'payjp'

  def buy
    Payjp.api_key = 'sk_test_ebc9ef2512e4cf855b0dc53f'
    @image = Image.find(16)
    # @image = Image.find(params[:item_id])
    @address = Address.find_by(user_id: current_user.id)
    @user = User.find_by(id: current_user.id)
    customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
  end

  def pay
    Payjp.api_key = 'sk_test_ebc9ef2512e4cf855b0dc53f'
    @card = Card.find_by(user_id: current_user.id)
    if @item.blank?
      redirect_to action: "buy"
    else
    Payjp::Charge.create(
      amount: @item.price,
      customer: @card.customer_id,
      currency: 'jpy'
    )

      @item.update(buyer_id: current_user.id)
      redirect_to :root
    end
  end

  def done
  end

  def transaction_comp
    @item.update(level: 2)
    redirect_to item_path(@item.id)
  end

  private
  def redirect_to_credit_new
    @card = Card.find_by(user_id: current_user.id)
    if @card.blank?
      redirect_to controller: "cards", action: "new"
    end
  end

  def set_item
    # @item = Item.find(params[:item_id])
    @item = Item.find(16)

  end

  def get_payjp_info
      Payjp.api_key = Rails.application.credentials.dig(:payjp, :PAYJP_SECRET_KEY)
  end

  def redirect_to_sign_in
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def redirect_to_item_show_if_own_item
    if @item.seller_id == current_user.id
      # redirect_to item_path(params[:item_id])
    end
  end

  def redirect_to_item_show_if_item_sold
    # if @item.level != 0
      # redirect_to item_path(params[:item_id])
    # end
  end

end
