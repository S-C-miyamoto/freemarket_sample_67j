class CardsController < ApplicationController

  before_action :set_card, only: [:show, :destroy, :new]
  before_action :get_payjp_info, only:[:show, :destroy, :create]
  
  require "payjp"

  def new
    redirect_to action: "new" if @card.exists?
  end

  
  def create
    if params['payjp-token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
      email: current_user.email,
      card: params['payjp-token'],
      metadata: {user_id: current_user.id}
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to :root
      else
        redirect_to action: "edit", id: current_user.id
      end
    end
  end

  def destroy
    if @card.blank?
      customer = Payjp::Customer.retrieve(@card.customer_id)
      customer.delete
      @card.delete
    end
      redirect_to action: "new"
  end


  def show
    if @card.blank?
      redirect_to action: "new" 
    else
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end
end

def edit
end

  private


  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end


  def get_payjp_info
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
  end