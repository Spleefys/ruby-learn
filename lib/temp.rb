# frozen_string_literal: true

require_relative 'temp_input'
require_relative 'temp_check'

# class Temperature
class Temperature
  attr_accessor :value, :from, :to

  def convert
    input = Input.new
    @value = input.value
    @from = input.from
    @to = input.to
    converted = Check.new(@value, @from, @to)
    converted.check
  end
end

temp = Temperature.new
temp.convert
