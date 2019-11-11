# frozen_string_literal: true

require_relative './../lib/files.rb'

describe '.max' do
  subject { FileCSV.new('breweries_us.csv').max }
  context 'When we call method max' do
    it { is_expected.to eq 284 }
  end
end
describe '.min' do
  subject { FileCSV.new('breweries_us.csv').min }
  context 'When we call method min' do
    it { is_expected.to eq 3 }
  end
end
describe '.average' do
  subject { FileCSV.new('breweries_us.csv').average }
  context 'When we call method average' do
    it { is_expected.to eq 106.87868716244287 }
  end
end
describe '.dispersion' do
  subject { FileCSV.new('breweries_us.csv').dispersion }
  context 'When we call method dispersion' do
    it { is_expected.to eq 6686.929582980514 }
  end
end
