require "basket"

describe Basket do

  before (:each) do
    @basket = Basket.new
  end

  let:apple {Item.new('apple', 1)}
  let:banana {Item.new('banana', 2)}
  let:pear {Item.new('pear', 2.5)}

  it "is empty" do
    expect(@basket.items).to eql([])
  end

  it "adds one item" do
    @basket.add_item(apple)
    expect(@basket.items.count).to eql(1)
  end

  it "calculates total amount of one item" do
    @basket.add_item(apple)
    expect(@basket.sub_total).to eql(1.00)
  end

  it "calculates total amount with 2 items" do
    @basket.add_item(apple)
    @basket.add_item(banana)
    expect(@basket.sub_total).to eql(3.00)
  end

  it "calculates total amount with 3 items" do
    @basket.add_item(apple)
    @basket.add_item(banana)
    @basket.add_item(pear)
    expect(@basket.sub_total).to eql(5.5)
  end
end
