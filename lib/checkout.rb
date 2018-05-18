class Checkout

  def initialize(basket, tax)
    @basket = basket
    @tax = tax.to_f
  end

  def calculate_tax
    tax_rate = @tax / 100
    total_tax = @basket.sub_total * tax_rate
    ('%.2f' % total_tax).to_f
  end

  def calculate_total
    total = @basket.sub_total + calculate_tax
    ('%.2f' % total).to_f
  end
end
