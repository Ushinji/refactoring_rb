class Rental
  attr_accessor :movie, :days_rentaled

  def initialize(movie, days_rentaled)
    @movie = movie
    @days_rentaled = days_rentaled
  end

  def amount
    this_amount = 0.0
    case self.movie.price_code
    when Movie::REGULAR then
      this_amount += 2
      this_amount += (self.days_rentaled - 2) * 1.5 if self.days_rentaled > 2
    when Movie::NEW_RELEASE then
      this_amount += self.days_rentaled * 3
    when Movie::CHILDRENS then
      this_amount += 1.5
      this_amount += (self.days_rentaled - 3) * 1.5 if self.days_rentaled > 3
    end
    this_amount
  end

  def frequent_renter_points
    frequent_renter_points = 1
    if self.movie.price_code == Movie::NEW_RELEASE && self.days_rentaled > 1
      frequent_renter_points += 1
    end
    frequent_renter_points
  end
end
