Given /^a can of beans costs \$(\d+)$/ do |price_of_beans|
  set_price 'beans', price_of_beans.to_i
end

When /^I buy (\d+) can of beans$/ do |num_beans|
  buy num_beans.to_i, 'beans'
end

Then /^the total should be \$(\d+)$/ do |expected_total|
  total.should == expected_total.to_i
end