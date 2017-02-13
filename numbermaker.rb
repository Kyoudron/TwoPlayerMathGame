class Question
  attr_reader :random_number1, :random_number2

  def self.random_number1
    @random_number1 = 1 + rand(19)
  end

  def self.random_number2
    @random_number2 = 1 + rand(19)
  end

end