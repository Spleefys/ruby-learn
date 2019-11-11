# frozen_string_literal: true

# class Input
class Input
  def value
    puts 'Input value of temperature'
    @value = gets.chomp
  end

  def from
    puts 'Input basic scale'
    @from = gets.chomp
  end

  def to
    puts 'Input scale to translate'
    @to = gets.chomp
  end
end
