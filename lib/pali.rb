# frozen_string_literal: true

# class Palindromic
class Palindromic
  def initialize(word)
    @word = word
  end

  def palindromic?
    @word.reverse == @word
  end
end
