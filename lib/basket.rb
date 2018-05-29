class Basket

  attr_reader :items, :sub_total

  def initialize
    @items = []
  end

  def add_item(item)
    items << item
  end

  def sub_total
    total = @items.map {|item| item.price}
    total.sum.to_f
  end
end
