class PurchaseController < ApplicationController
  
  before_action :set_item, only: [:pay, :buy, :done, :transaction_comp]
  before_action :get_payjp_info, only: [:pay, :buy]

  before_action :redirect_to_credit_new, only: [:pay, :buy]

  require 'payjp'

  def buy
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @default_card_information = customer.cards.retrieve(@card.card_id)
  end

  def pay
    # @card = Card.find(user_id: current_user.id)
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
    @item = Item.find(params[:item_id])
  end

  def get_payjp_info
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
  end
end
