require 'spec_helper'

describe RetirementEstimator do
  subject { described_class.get(date_of_birth, man) }

  context 'When it s a man' do
    let(:man) { true }

    context 'When it is before 5-12-1953' do
      let(:date_of_birth) { Date.new(1953, 12, 5) }
      it { should be_eql Date.new(2018, 12, 5) }
    end

    context 'When it is after 6-4-1978' do
      let(:date_of_birth) { Date.new(1978, 4, 6) }
      it { should be_eql Date.new(2046, 4, 6) }
    end

    context 'When it is between 6-12-1953 and 5-4-1978' do
      let(:date_of_birth) { Date.new(1977, 8, 10) }
      it { should be_eql Date.new(2045, 1, 6) }
    end
  end

  context 'when it s a woman' do
    let(:man) { false }

    context 'When it is before 5-4-1950' do
      let(:date_of_birth) { Date.new(1950, 4, 5) }
      it { should be_eql Date.new(2010, 4, 5) }
    end

    context 'When it is after 6-4-1978' do
      let(:date_of_birth) { Date.new(1978, 4, 6) }
      it { should be_eql Date.new(2046, 4, 6) }
    end

    context 'When it is between 5-4-1950 and 6-11-1953' do
      let(:date_of_birth) { Date.new(1951, 5, 10) }
      it { should be_eql Date.new(2012, 7, 6) }
    end

    context 'When it is between 6-12-1953 and 5-4-1978' do
      let(:date_of_birth) { Date.new(1960, 9, 10) }
      it { should be_eql Date.new(2027, 3, 10) }
    end
  end
end
