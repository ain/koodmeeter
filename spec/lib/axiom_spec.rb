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
    end

    context Koodmeeter::Axiom.list.first do
      it { is_expected.to have_key :regex }
      it { is_expected.to have_key :score }
    end
  end

end