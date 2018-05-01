require "self_checkout"

describe SelfCheckout do

describe "calculations" do
  context "three items, £1 each" do
    it "returns 3" do
      expect(SelfCheckout.calculations("1", "1", "1")).to eql(3)
    end
  end

  context "three items, £2 each" do
    it "returns six" do
      expect(SelfCheckout.calculations("2", "2", "2")).to eql(6)
    end
  end

end

end
