require_relative "basket"
require_relative "item"
class Display

  attr_reader :basket, :item

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
    @basket = Basket.new
  end

  def welcome_message(message)
    @output.puts message
  end

  def user_prompt_name
    @output.puts "What is the name?"
    @name = @input.gets.chomp
  end

  def user_prompt_price
    @output.puts "What is the price?"
    @price = @input.gets.chomp
  end

  def create_item
    @item = Item.new(@name,@price)
  end

  def add_item_to_basket
    @basket.add_item(@item)
  end

  def run
    welcome_message("hello")
    user_prompt_name
    user_prompt_price
    create_item
    add_item_to_basket
  end

end

# d = Display.new
# d.run
