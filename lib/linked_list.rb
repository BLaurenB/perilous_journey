require 'pry'
require_relative 'node'

class LinkedList

  attr_accessor :head

  def initialize
    @all_nodes = 0
    @head
  end

  def count
    @all_nodes
  end

  def last_wagon
    if @head.next_node == nil
      return @head
    end

    potential_last_wagon = @head
    while potential_last_wagon.next_node != nil
      potential_last_wagon = potential_last_wagon.next_node
    end
    return potential_last_wagon
  end



  def append(surname)
    @all_nodes += 1
    if @head == nil
      @head = Node.new(surname)
    else
      last_wagon.next_node = Node.new(surname)
    end
  end

  def next_wagon
    next_wagon = next_wagon.next_node
  end



  # def family_nodes
  #   family_array = []
  #   while @head.next_node != nil
  #     family_array << @head
  #     @head = @head.next_node
  #   end
  #   family_array << @head
  # end

  def to_string
    family_string = "The #{@head.surname} family"
    if @all_nodes == 1
      return family_string
    end

    wagon = @head
    while wagon.next_node != nil
      family_string << " followed by the #{wagon.surname} family"
      wagon = wagon.next_node
    end
    return family_string
  end

  # def prepend(surname)
  #   @all_nodes += 1
  # end


end #Class end
