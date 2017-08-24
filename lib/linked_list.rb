require 'pry'
require_relative 'node'

class LinkedList

  attr_accessor :head, :position
  attr_reader

  def initialize
    @all_nodes = 0
    @head
  end

  def count
    @all_nodes
  end


  def last_wagon #works!!!
    if @head.next_node == nil
      return @head
    end
    potential_last_wagon = @head
    while potential_last_wagon.next_node != nil
      potential_last_wagon = potential_last_wagon.next_node
    end
    return potential_last_wagon
  end


  def append(surname)#Works!!!
    @all_nodes += 1
    if @head == nil
      @head = Node.new(surname)
    else
      last_wagon.next_node = Node.new(surname)
    end
  end

  def prepend(surname) #apparently this doesn't have to be so wordy.
    @all_nodes += 1
    old_head = @head
    new_head = Node.new(surname)
    new_head.next_node = old_head
    @head = new_head
  end

  def insert (position, surname)
    @all_nodes +=1
    position = position.to_i
    #if there's nothing to insert, just make a new head
    if position > @all_nodes.to_i #do I need to make sure these are integers?
      puts "There are only #{@all_nodes} wagons. Please try again."
    elsif @head == nil #is this needed?
      @head = Node.new(surname)
    else
      post_insert_wagon = insert_point.next_node #saves the rest of the wagons
      insert_point.next_node = Node.new(surname) #creates a new wagon attached to previous wagon
      insert_point.next_node.next_node = post_insert_wagon #connects insert to post_insert
    end
  end

  def insert_point
    potential_insert_point = @head #starting point!
    (position.to_i).times do |wagon|
      potential_insert_point = potential_insert_point.next_node
    end
    return potential_insert_point
  end


  def to_string # works!!!
  family_string = "The #{@head.surname} family"
    if @all_nodes == 1
      return family_string
    else
    wagon = @head
      while wagon.next_node != nil
        wagon = wagon.next_node
        family_string << " followed by the #{wagon.surname} family"
      end
      return family_string
    end
  end

  def find(position, wagons_to_return)  #WORKS!!
    if position.to_i > @all_nodes.to_i #do I need to make sure these are integers?
      puts "There are only #{@all_nodes} wagons. Please try again."
    else
      family_string = "The #{@head.surname} family"
      wagon = insert_point
        (wagons_to_return.to_i).times do |w| #get other families
        wagon = wagon.next_node
        family_string << " followed by the #{wagon.surname} family"
      end
      return family_string
    end
  end

  def includes?(surname)
    wagon = @head
    while wagon != nil
      return true if wagon.surname == surname
      wagon = wagon.next_node
    end
  end



  def pop
    pop_strings = [" has died of disentary",
      " has died of cholera",
      " has died of starvation",
      " has died of dehydration",
      " has died from snakebites",
      " has died from cannibalism like the Dahmer Party"]

    if @head != nil
      @all_nodes -= 1
      puts "The #{last_wagon.surname} family".concat(pop_strings.sample)
      wagon = @head
      ((@all_nodes.to_i) - 1).times do |w|
        wagon = wagon.next_node
      end
      return (wagon.next_node = nil)
    elsif @head.next_node = nil
      @head = nil
      @all_nodes = 0
    else @head == nil
      puts "There is no one left."
    end
  end





end #Class end
