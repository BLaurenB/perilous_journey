require 'pry'

class Node

attr_accessor :surname, :next_node, :position

  def initialize(position = nil, surname)
    @position = position
    @surname = surname
    @next_node = nil
  end

end
