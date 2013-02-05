require File.dirname(__FILE__) + "/spec_helper"

describe Checkout do
  it "has a total" do
    price_of_beans = :who_cares
    checkout = Checkout.new(price_of_beans)
    checkout.should respond_to(:total)
  end
  
  it "allows me to buy a single item" do
    checkout = Checkout.new('pen' => 99)
    checkout.buy('pen')
    checkout.total.should == 99
  end
  
  it "allows me to buy several products" do
    checkout = Checkout.new('pen' => 99, 'chips' => 41)
    checkout.buy('pen')
    checkout.buy('chips')
    checkout.total.should == 140
  end
  
  context "when I try to buy an item I don't have a price for" do
    
  end
end
