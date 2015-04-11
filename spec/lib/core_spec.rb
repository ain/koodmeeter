require 'spec_helper'

describe Koodmeeter do
  describe '.check' do
    context 'without password' do
      it { expect{ Koodmeeter.check }.to raise_error(ArgumentError) }
    end
    context 'with numeric password' do
      it { expect{ Koodmeeter.check(21233) }.to_not raise_error }
    end
    context 'with blacklisted password' do
      subject { Koodmeeter.check('123456') }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.check('qwerty') }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.check('lovely') }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.check('password') }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.check('welcome') }
      it { is_expected.to eql 0 }
    end
    context 'with blacklisted password fed as number' do
      subject { Koodmeeter.check(123456) }
      it { is_expected.to eql 0 }

      subject { Koodmeeter.check(12345) }
      it { is_expected.to eql 0 }
    end
    context 'with 4 lowercase letters followed by a number' do
      subject { Koodmeeter.check('asdf1') }
      it { is_expected.to eql 0 }
    end
    context 'with 4 lowercase letters followed by 2 numbers' do
      subject { Koodmeeter.check('asdf12') }
      it { is_expected.to eql 1 }
    end
    context 'with 4 lowercase letters followed by 3 numbers' do
      subject { Koodmeeter.check('asdf112') }
      it { is_expected.to eql 2 }
    end
    context 'with 4 lowercase letters followed by 3 numbers and a dash' do
      subject { Koodmeeter.check('asdf112-') }
      it { is_expected.to eql 3 }
    end
    context 'with 4 lowercase letters followed by 3 numbers, a dash and a dollar' do
      subject { Koodmeeter.check('asdf112-$') }
      it { is_expected.to eql 4 }
    end
    context 'with 4 lowercase letters followed by 3 numbers, a dash, a dollar and 2 numbers' do
      subject { Koodmeeter.check('asdf112-$55') }
      it { is_expected.to eql 5 }
    end
    context 'with 8 minimum chars, 4 lowercase letters followed by 3 numbers, a dash, a dollar and 2 numbers' do
      subject { Koodmeeter.check('asdf112-$55', 8) }
      it { is_expected.to eql 4 }
    end
    context 'with 12 minimum chars, 4 lowercase letters followed by 3 numbers, a dash, a dollar and 2 numbers' do
      subject { Koodmeeter.check('asdf112-$55', 12) }
      it { is_expected.to eql 0 }
    end
  end

  describe '.blacklist' do
    subject { Koodmeeter.blacklist }
    it { is_expected.to be_a Array }
  end

end