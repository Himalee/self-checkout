require "run"
require "basket"
require "display"
require "checkout"

describe Run do

  before (:each) do
    @basket = Basket.new
    @output = StringIO.new
  end

  context "Runs checkout" do

    it "returns totals of one item" do
      input = StringIO.new("apple\n5")
      display = Display.new(@output, input)
      run = Run.new(@basket, display)
      run.create_item
      run.add_item_to_basket

      run.total

      expect(@output.string).to include("sub total: 5.00", "tax: 0.50", "total: 5.50")
    end

    it "returns totals of three items" do
      input = StringIO.new("apple\n5\nbanana\n6.5\npear\n3.25")
      display = Display.new(@output, input)
      run = Run.new(@basket, display)
      run.create_item
      run.add_item_to_basket
      run.create_item
      run.add_item_to_basket
      run.create_item
      run.add_item_to_basket

      run.total

      expect(@output.string).to include("sub total: 14.75", "tax: 1.48", "total: 16.23")
    end
  end
end
