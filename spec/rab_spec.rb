# frozen_string_literal: true

require_relative './../lib/rabbits.rb'

describe 'reproduction' do
  subject { Rabbits.new.reproduction(10) }
  context 'When we call method reproduction' do
    it { is_expected.to eq 55 }
  end
end

describe 'reproduction' do
  subject { Rabbits.new.reproduction(-2) }
  context 'When we call method reproduction' do
    it { is_expected.to eq false }
  end
end
