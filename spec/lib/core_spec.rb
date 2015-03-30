require 'spec_helper'

describe Koodmeeter do
  describe '.test' do
    context 'without password' do
      it { expect{ Koodmeeter.test }.to raise_error(ArgumentError) }
    end
    context 'with numeric password' do
      it { expect{ Koodmeeter.test(21233) }.to_not raise_error }
    end
    context 'with blacklisted password' do
      subject { Koodmeeter.test('123456') }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.test('qwerty') }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.test('lovely') }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.test('password') }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.test('welcome') }
      it { is_expected.to eql 0 }
    end
    context 'with blacklisted password fed as number' do
      subject { Koodmeeter.test(123456) }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.test(12345) }
      it { is_expected.to eql 0 }
    end
  end

  describe '.blacklist' do
    subject { Koodmeeter.blacklist }
    it { is_expected.to be_a Array }
  end

end