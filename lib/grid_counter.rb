class GridCounter
  attr_reader :location

  def initialize
    @location = [0,0]
    @facing = 'n'
  end

  def move(direction)

  end

  def go_east
    move_x('plus')

  end

  def go_west
    move_x('minus')
  end

  def go_north
    move_y('plus')
  end

  def go_south
    move_y('minus')
  end

  def get_facing
    @facing
  end

  def move_x(polarity)
    if polarity == 'minus'
      @location[0] = minus_move(@location[0])
    else
      @location[0] = plus_move(@location[0])
    end
  end

  def move_y(polarity)
    if polarity == 'minus'
      @location[1] = minus_move(@location[1])
    else
      @location[1] = plus_move(@location[1])
    end
  end

  def minus_move(coordinate)
    coordinate - 1
  end

  def plus_move(coordinate)
    coordinate + 1
  end

end
