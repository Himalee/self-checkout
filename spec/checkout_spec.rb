require "checkout"
require "item"
require "basket"

describe Checkout do
  # let{:apple} {Item.new('apple', 1)}}
  # subject{:checkout} {described_class.new()}

  before(:each) do
    apple = Item.new("apple", 1)
    banana = Item.new("banana", 2)
    basket = Basket.new
    basket.add_item(apple)
    basket.add_item(banana)
    @checkout = Checkout.new(basket, 20)
  end

  it "includes 20% tax" do
    expect(@checkout.calculate_tax).to eql(0.60)
  end

  it "includes finds the total including tax" do
    expect(@checkout.calculate_total).to eql(3.60)
  end
end
