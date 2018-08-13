require_relative "basket"
require_relative "item"

class Display

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end

  def welcome_message(message)
    @output.puts message
  end

  def user_prompt_name
    @output.puts "What is the name?"
  end

  def user_prompt_price
    @output.puts "What is the price?"
  end

  def get_user_input
    @input.gets.chomp
  end

  def total(sub_total, tax, total)
    @output.puts "sub total: #{'%.2f' % sub_total}"
    @output.puts "tax: #{'%.2f' % tax}"
    @output.puts "total: #{'%.2f' % total}"
  end
end
