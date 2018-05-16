require "basket"

describe SelfCheckout do

  context "takes one item" do
    it "converts into a hash" do
      Basket.items
      expect(items).to eql({item: 1})
    end
  end

end
