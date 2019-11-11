# frozen_string_literal: true

# class Rabbits
class Rabbits
  def reproduction(months)
    return false if months.negative?

    months <= 1 ? months : reproduction(months - 1) + reproduction(months - 2)
  end
end
