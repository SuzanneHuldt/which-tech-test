class GridCounter

  def initialize
    @location = [0,0]
    @direction = 'n'
  end

  def get_direction
    @direction
  end

  def move_x(polarity)
    @location = polarity(@location[0])
  end

  def minus(coordinate)
    coordinate - 1
  end

  def plus(coordinate)
    coordinate + 1
  end

end
