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
      this_amount = 0.0
      case rental.movie.price_code
      when Movie::REGULAR then
        this_amount += 2
        this_amount += (rental.days_rentaled - 2) * 1.5 if rental.days_rentaled > 2
      when Movie::NEW_RELEASE then
        this_amount += rental.days_rentaled * 3
      when Movie::CHILDRENS then
        this_amount += 1.5
        this_amount += (rental.days_rentaled - 3) * 1.5 if rental.days_rentaled > 3
      end

      frequent_renter_points += 1

      if rental.movie.price_code == Movie::NEW_RELEASE && rental.days_rentaled > 1
        frequent_renter_points += 1
      end

      result += "\t #{rental.movie.title} \t #{this_amount} \n"
      total_amount += this_amount
    end

    result += "Amount owed is #{total_amount} \n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end
end
