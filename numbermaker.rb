class Question
  attr_reader :random_number1, :random_number2

  def initialize
    @random_number1 = 1 + rand(19)
    @random_number2 = 1 + rand(19)
  end
end