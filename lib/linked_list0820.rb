require 'pry'
require_relative './lib/node'

class LinkedList

  attr_accessor :head, :surname, :next_node

  def initialize(surname = nil, next_node = nil)
    @head = Node.new(surname, next_node)
    @surname = surname
    @next_node = next_node
  end

  @caboose = Node.new(surname, nil) # Is this a thing I shoudl try?

#K, so the Whole New List is initialized with only the head.
#the head is a new node that has a surname, and nil for the next_node
#After there is a head, other new nodes can be appended, inserted, etc.


  def append(surname)
    #The initial headwagon will be [surname,nil], but as soon as you append,
      # the headwagon (or the most recent wagon) will take the new surname as
      #[surname,new-surname].
      # THe appended wagon will now be [new-surname, nil]
      #I need to find a way to sort through the wagons to find the caboose in
      # order to append to it.
      # Initially, wagon = @head
      #
      # if wagon.next_node is not nil, (it's not the caboose)'
      #   find the wagon that has a nil slot (the caboose)
      #     do this by saying WHILE wagon.next != nil,
      #       check the next wagon. (wagon = wagon.next_node)
      # if wagon IS the caboose (next slot is nil)
      #   then create a new caboose and add the caboose's surname to replace
      # the previous wagon's

    wagon = @head

    if wagon.next_node != nil
      wagon = wagon.next_node
    else #the caboose bcomes a normal wagon. it's surname is the same,
      # but nil changes to the caboose's surname.
      @caboose = Node.new(surname, nil)
      wagon.next_node = caboose.surname
    end
  end


end #Class end


list = LinkedList.new("Smith")
#puts "list.head = #{list.head}"
puts "Smith...list.surname = #{list.surname}"
puts "list.next_node = #{list.next_node}"
