require 'rails_helper'

RSpec.describe Creditcard, type: :model do
  describe '#create' do

    it "is invalid without a user_id" do
      creditcard = build(:creditcard, user_id: "")
      creditcard.valid?
      expect(creditcard.errors[:user_id]).to include("can't be blank")
    end

    it "is invalid without a customer_id" do
      creditcard = build(:creditcard, customer_id: "")
      creditcard.valid?
      expect(creditcard.errors[:customer_id]).to include("can't be blank")
    end

    it "is invalid without a card_id" do
      creditcard = build(:creditcard, card_id: "")
      creditcard.valid?
      expect(creditcard.errors[:card_id]).to include("can't be blank")
    end

  end
end

