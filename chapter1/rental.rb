class Rental
  attr_accessor :movie, :days_rentaled

  def initialize(movie, days_rentaled)
    @movie = movie
    @days_rentaled = days_rentaled
  end

  def charge
    self.movie.charge(self.days_rentaled)
  end

  def frequent_renter_points
    self.movie.frequent_renter_points(self.days_rentaled)
  end
end
