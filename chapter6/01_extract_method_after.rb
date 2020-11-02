class Sample
  def initialize(name)
    @name = name
  end

  def print_owing(amount)
    print_banner
    print_details(amount)
  end

  def print_banner()
    puts('BANNER')
  end

  def print_details(amount)
    puts("name: #{@name}")
    puts("amount: #{amount}")
  end
end

sample = Sample.new('TEST_NAME')
sample.print_owing(12345)
