
class SelfCheckout

def initialize(currency, tax_rate)
  @currency = currency
  @tax_rate = tax_rate
end


def shopping_list
  @item = 1
  @array_of_items = []
  #@items = {}
  while @item <= 3
    puts "Enter the price of item #{@item}:"
    @price = gets.chomp
    puts "Enter the quantity of item #{@item}:"
    @quantity = gets.chomp
    #@items[:price] = @price
    #@items[:quantity] = @quantity
    @array_of_items << {price: @price, quantity: @quantity} # << means "add to the end of this array". Adding hashes to an array called items.
    @item += 1 # adds one to the list of items
  end
  calculations
end

def item_total(item_number)
  item_number[:quantity].to_i * item_number[:price].to_i # takes price and quantity from the array and multiplies them
end

def sub_total(items)
  sub_total = 0
  items.each {|item| sub_total += item_total(item)} # for each item in the array, add to running total 'sub_total'
  sub_total
end

def calculations
  sub_total = sub_total(@array_of_items)
  tax = sub_total * (@tax_rate / 100)
  total = tax + sub_total
  puts "Subtotal: #{@currency}#{sub_total}, Tax: #{@currency}#{tax.round(2)} and Total: #{@currency}#{total.round(2)}"
end

end


sc = SelfCheckout.new("£", 5.5)
sc.shopping_list
