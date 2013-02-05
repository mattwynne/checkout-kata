require File.dirname(__FILE__) + "/spec_helper"

describe Checkout do
  it "has a total" do
    price_of_beans = :who_cares
    checkout = Checkout.new(price_of_beans)
    checkout.should respond_to(:total)
  end
end
