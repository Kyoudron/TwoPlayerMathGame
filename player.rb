class Player
  attr_reader :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def wrong
    @life -= 1
  end

  def lose
    @life == 0
  end

end