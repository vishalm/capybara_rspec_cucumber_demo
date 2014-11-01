require 'spec_helper'

describe 'My Complex Calculator' do

  it 'should find square of number' do
    c_cal = ComplexCalculator.new
    c_cal.square(5).should == 25
  end

  it 'should add 2 numbers' do
    c_cal = ComplexCalculator.new
    c_cal.add(4,9).should == 13
  end

end