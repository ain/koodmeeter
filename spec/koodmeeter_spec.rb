require 'spec_helper'

describe Koodmeeter do
  it "expect to throw error without parameter" do
    expect{Koodmeeter.test}.to raise_error(ArgumentError)
  end
  it "expect to pass test with number for parameter" do
    expect{Koodmeeter.test(21233)}.not_to raise_error
  end
end