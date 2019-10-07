require_relative './price'

class Movie
  attr_accessor :title, :price

  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  def initialize(title, price_code)
    @title = title
    self.set_price_code(price_code)
  end

  def set_price_code(price_code)
    case price_code
    when REGULAR then
      self.price = RegularPrice.new
    when NEW_RELEASE then
      self.price = NewReleasePrice.new
    when CHILDRENS then
      self.price = ChildrensPrice.new
    else
      raise "Invalid price_code: #{price_code}"
    end
  end

  def charge(days_rentaled)
    self.price.charge(days_rentaled)
  end

  def frequent_renter_points(days_rentaled)
    self.price.frequent_renter_points(days_rentaled)
  end
end
