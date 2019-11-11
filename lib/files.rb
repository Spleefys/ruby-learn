# frozen_string_literal: true

require 'daru'

# class FileCSV
class FileCSV
  def initialize(file)
    @df = Daru::DataFrame.from_csv(file)
  end

  def max
    @df['state_breweries'].max
  end

  def min
    @df['state_breweries'].min
  end

  def average
    @df['state_breweries'].mean
  end

  def dispersion
    @df['state_breweries'].variance_sample
  end
end
