Given /^the price of a can of beans is \$(\d+)$/ do |price|
  @price_of_beans = price.to_i
end

When /^I buy (\d+) can of beans$/ do |number_of_cans|
  @checkout = Checkout.new(@price_of_beans)
end

Then /^the total should be \$(\d+)$/ do |expected_total|
  @checkout.total.should == expected_total.to_i
end