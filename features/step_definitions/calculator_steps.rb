Given(/^I have calculator$/) do
  @calc = MyCalculator.new
end

When(/^I add (\d+) and (\d+)$/) do |arg1, arg2|
  @res = @calc.add(arg1.to_i,arg2.to_i)
end

Then(/^I should the is (\d+)$/) do  |arg|
  @res.should == arg.to_i
end