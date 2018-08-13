require_relative "item"
require_relative "basket"
require_relative "checkout"
require_relative "display"

class Run

  def initialize(basket, display)
    @basket = basket
    @display = display
  end

  def get_item_name
    @display.get_user_input
  end

  def get_item_price
    @display.get_user_input.to_f
  end

  def create_item
    @display.user_prompt_name
    name = get_item_name
    @display.user_prompt_price
    price = get_item_price
    @new_item = Item.new(name, price)
  end

  def add_item_to_basket
    @basket.add_item(@new_item)
  end

  def continue_shopping?
    @display.get_user_input != "checkout"
  end

  def displays_list_of_items
    @display.show_items
  end

  def shopping
    create_item
    add_item_to_basket
    while continue_shopping?
      create_item
      add_item_to_basket
    end
    total
  end

  def total
    subtotal = @basket.sub_total
    tax = Checkout.new(@basket, 10).calculate_tax
    total = Checkout.new(@basket, 10).calculate_total
    @display.total(subtotal, tax, total)
  end

  def run
    @display.welcome_message("hello")
    shopping
  end
end

# basket = Basket.new
# display = Display.new
# checkout = Checkout.new(basket, 10)
# run = Run.new(basket, display)
# run.run
