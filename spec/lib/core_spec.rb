require 'spec_helper'

describe Koodmeeter do
  it "expect to throw error without parameter" do
    expect{Koodmeeter.test}.to raise_error(ArgumentError)
  end
  it "expect to not to throw error on numeric parameter" do
    expect{Koodmeeter.test(21233)}.not_to raise_error
  end
  it "expect to return blacklist dictionary" do
    expect(Koodmeeter.blacklist).to be_an_instance_of(Array)
  end
  it "expect to return 0 on blacklisted password" do
    expect(Koodmeeter.test('123456')).to eql(0)
    expect(Koodmeeter.test('qwerty')).to eql(0)
    expect(Koodmeeter.test('lovely')).to eql(0)
    expect(Koodmeeter.test('password')).to eql(0)
    expect(Koodmeeter.test('welcome')).to eql(0)
  end
  it "expect to return 0 on blacklisted password fed as number" do
    expect(Koodmeeter.test(123456)).to eql(0)
    expect(Koodmeeter.test(12345)).to eql(0)
  end
end