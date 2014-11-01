require 'spec_helper'

describe 'My Calculator' do

  it 'should take two parameters and add' do
    calc = MyCalculator.new
    calc.add(4,5).should == 9
  end

  it 'should take two parameters and add' do
    calc = MyCalculator.new
    calc.add(1,8).should == 9
  end

  it 'should take two parameters and add' do
    calc = MyCalculator.new
    calc.add(-4,5).should == 1
  end

  it 'should take two parameters and add' do
    calc = MyCalculator.new
    calc.add(-50,25).should == -25
  end

  it 'should subtract two number'do
     calc = MyCalculator.new
    calc.subtract(3,2).should == 1
  end

  it 'should divide two number' do
    calc = MyCalculator.new
    calc.divide(2,2).should == 1
  end

end