require 'pry'
require_relative 'node'

class LinkedList

  def initialize
    @head
    @all_nodes = 0
  end


  def head
    @head
  end


  def append(surname)
    @all_nodes += 1
    @head = Node.new(surname)
  end

  def count
    @all_nodes
    # make sure I remove them from all_nodes when I delete nodes
  end


  def to_string
    "The #{@head.surname} family"
  end


end #Class end
