require 'spec_helper'

describe Koodmeeter::Axiom do

  describe '.list' do
    context Koodmeeter::Axiom.list do
      it { is_expected.to be_a Array }
    end

    context Koodmeeter::Axiom.list.length do
      it { is_expected.to eql 8 }
    end

    context Koodmeeter::Axiom.list.first do
      it { is_expected.to be_a Hash }
      it { is_expected.to have_key :regex }
      it { is_expected.to have_key :score }
    end

    context Koodmeeter::Axiom.list.first[:score] do
      it { is_expected.to eql 1 }
    end

    context Koodmeeter::Axiom.list[1][:score] do
      it { is_expected.to eql 5 }
    end

    context Koodmeeter::Axiom.list[2][:score] do
      it { is_expected.to eql 2 }
    end

    context Koodmeeter::Axiom.list[3][:score] do
      it { is_expected.to eql 7 }
    end

    context Koodmeeter::Axiom.list[4][:score] do
      it { is_expected.to eql 5 }
    end

    context Koodmeeter::Axiom.list[5][:score] do
      it { is_expected.to eql 7 }
    end

    context Koodmeeter::Axiom.list[6][:score] do
      it { is_expected.to eql 3 }
    end

    context Koodmeeter::Axiom.list[7][:score] do
      it { is_expected.to eql 2 }
    end
  end

end