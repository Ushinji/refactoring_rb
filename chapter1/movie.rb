class Movie
  attr_accessor :title, :price_code

  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  def initialize(title, price_code)
    @title = title
    @price_code = price_code
  end

  def charge(days_rentaled)
    result = 0.0
    case self.price_code
    when REGULAR then
      result += 2.0
      result += (days_rentaled - 2) * 1.5 if days_rentaled > 2
    when NEW_RELEASE then
      result += days_rentaled * 3
    when CHILDRENS then
      result += 1.5
      result += (days_rentaled - 3) * 1.5 if days_rentaled > 3
    end
    result
  end

  def frequent_renter_points(days_rentaled)
    if self.price_code == NEW_RELEASE && days_rentaled > 1
      return 2
    else
      return 1
    end
  end
end
