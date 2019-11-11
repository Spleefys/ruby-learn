# frozen_string_literal: true

require_relative './../lib/temp_check.rb'

describe 'C to F' do
  subject { Check.new(100, 'C', 'F').c_to_f }
  context 'When we call method reproduction' do
    it { is_expected.to eq 212.0 }
  end
end

describe 'C to K' do
  subject { Check.new(100, 'C', 'K').c_to_k }
  context 'When we call method reproduction' do
    it { is_expected.to eq 373.15 }
  end
end

describe 'K to C' do
  subject { Check.new(273.15, 'K', 'C').k_to_c }
  context 'When we call method reproduction' do
    it { is_expected.to eq 0 }
  end
end

describe 'K to F' do
  subject { Check.new(273.15, 'K', 'F').k_to_f }
  context 'When we call method reproduction' do
    it { is_expected.to eq 32 }
  end
end

describe 'F to C' do
  subject { Check.new(32, 'F', 'C').f_to_c }
  context 'When we call method reproduction' do
    it { is_expected.to eq 0.0 }
  end
end

describe 'F to K' do
  subject { Check.new(32, 'F', 'K').f_to_k }
  context 'When we call method reproduction' do
    it { is_expected.to eq 273.15 }
  end
end
