class Price
  def charge(days_rentaled)
    raise NotImplementedError.new("#{self.class}##{__method__} must be implemented.")
  end

  def frequent_renter_points(days_rentaled)
    raise NotImplementedError.new("#{self.class}##{__method__} must be implemented.")
  end
end

class RegularPrice < Price
  def charge(days_rentaled)
    result = 2.0
    result += (days_rentaled - 2) * 1.5 if days_rentaled > 2
    result
  end

  def frequent_renter_points(days_rentaled)
    1
  end
end

class NewReleasePrice < Price
  def charge(days_rentaled)
    result = 0.0
    result += days_rentaled * 3
    result
  end

  def frequent_renter_points(days_rentaled)
    return 2 if days_rentaled > 1
    1
  end
end

class ChildrensPrice < Price
  def charge(days_rentaled)
    result = 1.5
    result += (days_rentaled - 3) * 1.5 if days_rentaled > 3
    result
  end

  def frequent_renter_points(days_rentaled)
    1
  end
end
