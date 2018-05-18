require "item"

describe Item do

  it "has a name" do
    item = Item.new("apple", 3)
    expect(item.name).to eql("apple")
  end

  it "has a price" do
    item = Item.new("apple", 2)
    expect(item.price).to eql(2)
  end



end
