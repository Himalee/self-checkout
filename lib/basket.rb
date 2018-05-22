class Basket

  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    items << item
  end

  def sub_total
    total = @items.map {|item| item.price}
    ('%.2f' % total.sum).to_f
  end
end
