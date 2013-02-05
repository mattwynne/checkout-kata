Given /^the price of a can of beans is \$(\d+)$/ do |price|
  @price_of_beans = price.to_i
end

Given /^the price of a pack of sausages is \$(\d+)$/ do |price|
  @price_of_sausages = price.to_i
end

When /^I buy (\d+) can of beans$/ do |number_of_cans|
  prices = {
    'beans' => @price_of_beans,
    'sausages' => @price_of_sausages
  }
  @checkout ||= Checkout.new(prices)
  @checkout.buy('beans')
end

When /^I buy (\d+) pack of sausages$/ do |number_of_packs|
  prices = {
    'beans' => @price_of_beans,
    'sausages' => @price_of_sausages
  }
  @checkout ||= Checkout.new(prices)
  @checkout.buy('sausages')
end

Then /^the total should be \$(\d+)$/ do |expected_total|
  @checkout.total.should == expected_total.to_i
end