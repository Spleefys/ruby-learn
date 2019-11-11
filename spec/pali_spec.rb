# frozen_string_literal: true

require_relative './../lib/pali.rb'

describe 'palindromic?' do
  subject { Palindromic.new('madam').palindromic? }
  context 'When we call method palindromic?' do
    it { is_expected.to eq true }
  end
end

describe 'palindromic?' do
  subject { Palindromic.new('hello').palindromic? }
  context 'When we call method palindromic?' do
    it { is_expected.to eq false }
  end
end
