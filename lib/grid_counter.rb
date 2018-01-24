class GridCounter
  attr_reader :location

  def initialize
    @location = [0,0]
    @facing = 'north'
  end

  def move(direction)
    case direction
    when 'right'
      turn_right
    when 'left'
      turn_left
    when
      go_forward
    end
    @location
  end

  def turn_left
    case
    when north_facing
      go_west
    when south_facing
      go_east
    when west_facing
      go_south
    when east_facing
      go_north
    end
  end

  def turn_right
    case
    when north_facing
      go_east
    when south_facing
      go_west
    when west_facing
      go_north
    when east_facing
      go_south
    end
  end

  def go_forward
    case
    when north_facing
      go_north
    when south_facing
      go_south
    when west_facing
      go_west
    when east_facing
      go_east
    end
  end

  def north_facing
    get_facing == 'north'
  end

  def south_facing
    get_facing == 'south'
  end

  def west_facing
    get_facing == 'west'
  end

  def east_facing
    get_facing == 'east'
  end

  def go_east
    move_x('plus')
    set_facing('east')
  end

  def go_west
    move_x('minus')
    set_facing('west')
  end

  def go_north
    move_y('plus')
    set_facing('north')
  end

  def go_south
    move_y('minus')
    set_facing('south')
  end

  def set_facing(direction)
    @facing = direction
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
