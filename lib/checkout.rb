class Checkout

  FORMULATE_TAX_RATE = 100

  def initialize(basket, tax)
    @basket = basket
    @tax_rate = tax.to_f
  end

  def tax_rate
    @tax_rate / FORMULATE_TAX_RATE
  end

  def calculate_tax
    (@basket.sub_total.to_f * tax_rate).round(2)
  end

  def calculate_total
    (@basket.sub_total.to_f + calculate_tax).round(2)
  end
end
