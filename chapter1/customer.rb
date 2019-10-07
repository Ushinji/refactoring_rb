class Customer
  attr_accessor :name, :rentals

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(rental)
    self.rentals.push(rental)
  end

  def statement
    total_amount = 0
    frequent_renter_points = 0
    result = "Rental Record for #{@name}\n"

    self.rentals.each do |rental|
      this_amount = rental.charge
      result += "\t #{rental.movie.title} \t #{this_amount} \n"
      total_amount += this_amount

      frequent_renter_points += rental.frequent_renter_points
    end

    result += "Amount owed is #{total_amount} \n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end
end
