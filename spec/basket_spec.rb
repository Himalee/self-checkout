require "basket"

describe Basket do

  it "is empty" do
    basket = Basket.new
    expect(basket.items).to eql([])
  end

  it "adds one item" do
    basket = Basket.new
    item = Item.new("apple", 1)
    basket.add_item(item)
    expect(basket.items.count).to eql(1)
  end

  it "calculates total amount of one item" do
    apple = Item.new("apple", 1)
    basket = Basket.new
    basket.add_item(apple)
    expect(basket.sub_total).to eql(1.00)
  end

  it "calculates total amount with 2 items" do
    apple = Item.new("apple", 1)
    banana = Item.new("banana", 2)
    basket = Basket.new
    basket.add_item(apple)
    basket.add_item(banana)
    expect(basket.sub_total).to eql(3.00)
  end
end
