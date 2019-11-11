# frozen_string_literal: true

# class Check
class Check
  attr_accessor :value, :from, :to

  def initialize(value, from, to)
    @value = value
    @from = from
    @to = to
  end

  def c_to_k
    @value.to_f + 273.15
  end

  def c_to_f
    1.8 * @value.to_f + 32
  end

  def k_to_c
    @value.to_f - 273.15
  end

  def k_to_f
    1.8 * (@value.to_f - 273.15) + 32
  end

  def f_to_c
    (@value.to_f - 32) / 1.8
  end

  def f_to_k
    (5 * (@value.to_f - 32) / 9) + 273.15
  end

  def check
    if @from == 'C' && @to == 'K'
      puts 'Kelvin = ' + c_to_k.round(2).to_s + '°'
    elsif @from == 'C' && @to == 'F'
      puts 'Farengheit = ' + c_to_f.round(2).to_s + '°'
    elsif @from == 'K' && @to == 'C'
      puts 'Celsius = ' + k_to_c.round(2).to_s + '°'
    elsif @from == 'K' && @to == 'F'
      puts 'Farengheit = ' + k_to_f.round(2).to_s + '°'
    elsif @from == 'F' && @to == 'C'
      puts 'Celsius = ' + f_to_c.round(2).to_s + '°'
    elsif @from == 'F' && @to == 'K'
      puts 'Kelvin = ' + f_to_k.round(2).to_s + '°'
    else
      puts 'Wrong scale, input F or C or K'
      false
    end
  end
end
