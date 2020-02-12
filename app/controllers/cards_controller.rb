class CardsController < ApplicationController
  
  require "payjp"

  def new
    card = Card.where(user_id: current_user.id)
    redirect_to action: "new" if card.exists?
  end

  
  def create
    Payjp.api_key = 'sk_test_ebc9ef2512e4cf855b0dc53f'
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
    @card = Card.where(user_id: current_user.id).first
    if @card.blank?
    else
      Payjp.api_key = 'sk_test_ebc9ef2512e4cf855b0dc53f'
      customer = Payjp::Customer.retrieve(@card.customer_id)
      customer.delete
      @card.delete
    end
      redirect_to action: "new"
  end


  def show
    @card = Card.where(user_id: current_user.id).first
    if @card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = 'sk_test_ebc9ef2512e4cf855b0dc53f'
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end
end


def edit
end



