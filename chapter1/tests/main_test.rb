require 'minitest/autorun'
require_relative '../customer'
require_relative '../rental'
require_relative '../movie'

class CustomerTest < Minitest::Test

  def test_statement
    customer = Customer.new('test.user')

    movie1 = Movie.new('test_movie1', Movie::REGULAR)
    rental1 = Rental.new(movie1, 1)
    customer.add_rental(rental1)

    movie2 = Movie.new('test_movie2', Movie::NEW_RELEASE)
    rental2 = Rental.new(movie2, 2)
    customer.add_rental(rental2)

    movie3 = Movie.new('test_movie3', Movie::CHILDRENS)
    rental3 = Rental.new(movie3, 3)
    customer.add_rental(rental3)

    result = customer.statement

    expected = "Rental Record for test.user
\t test_movie1 \t 2.0 
\t test_movie2 \t 6.0 
\t test_movie3 \t 1.5 
Amount owed is 9.5 
You earned 4 frequent renter points"

    assert_equal(result, expected)
  end
end
