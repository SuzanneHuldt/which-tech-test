require 'json'
require 'open-uri'

class Parser
  def get_directions
    source = URI.parse("http://which-technical-exercise.herokuapp.com/api/suzannegchuldt@gmail.com/directions")
    fh = source.open
    input = fh.read
    @json = JSON.parse(input)
  end

  def split_input
    @directions = @json["directions"]
  end
end
