require 'rails_helper'

describe Item do
  describe '#create' do
    it "is invalid without a name" do
      item = build(:item, name: "")
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    it "is invalid without a state" do
      item = build(:item, state: "")
    item.valid?
    expect(item.errors[:state]).to include("can't be blank")
    end

    it "is invalid without a condition" do
      item = build(:item, condition: "")
    item.valid?
    expect(item.errors[:condition]).to include("can't be blank")
    end

    it "is invalid without a category_id" do
      item = build(:item, category_id: "")
    item.valid?
    expect(item.errors[:category_id]).to include("can't be blank")
    end

    it "is invalid without a price" do
      item = build(:item, price: "")
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end

    #値段が300より小さい場合出品できない
    it "is invalid greater than or equal to 300" do
      item = build(:item, price: 299)
      item.valid?
      expect(item.errors[:price]).to include("must be greater than or equal to 300")
    end

    #値段が9999999より大きい場合出品できない
    it "is invalid must be less than or equal to 9999999" do
      item = build(:item, price: 10000000)
      item.valid?
      expect(item.errors[:price]).to include("must be less than or equal to 9999999")
    end
  end
end