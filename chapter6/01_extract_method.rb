class Sample
  def initialize(name)
    @name = name
  end

  def print_owing(amount)
    print_banner

    puts("name: #{@name}")
    puts("amount: #{amount}")
  end

  def print_banner()
    puts('BANNER')
  end
end

sample = Sample.new('TEST_NAME')
sample.print_owing(12345)
