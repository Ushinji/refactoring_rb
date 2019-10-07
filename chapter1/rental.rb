class Rental
  attr_accessor :movie, :days_rentaled

  def initialize(movie, days_rentaled)
    @movie = movie
    @days_rentaled = days_rentaled
  end
end
