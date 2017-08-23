does the position arg need to be passed in at the instantiation?

[5] pry(main)> list.insert(1, "Q")
=> nil

def insert (position, surname)
  #if there's nothing to insert, just make a new head
  if position > count
    puts "There are only #{count} wagons."
  elsif @head == nil #is this needed?
    @head = Node.new(surname)
  else
    insert_point.next_node = post_insert_wagon #saves the rest of the wagons
    insert_point.next_node = Node.new(surname) #creates a new wagon attached to previous wagon
    insert_point.next_node.next_node = post_insert_wagon #connects insert to post_insert
  end
end


def insert_point
  potential_insert_point = @head #starting point!
  (count-1).times do |num|
    potential_insert_point = potential_insert_point.next_node
  end
  return potential_insert_point
end
