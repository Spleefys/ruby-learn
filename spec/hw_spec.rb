# frozen_string_literal: true

require_relative './../lib/hw.rb'

describe '.say_hello' do
  subject { Greeting.say_hello }
  context 'When we call method say_hello' do
    it { is_expected.to eq 'Hello World!' }
  end
end
