def insert(surname)
  new_node = Node.new(surname)
  new_node.next = @head #I don't have a .next
  @head = new_node
  new_node
end


@head is the initial
@head.surname  is the Family name of the Node instance
@head.next_node is the set of Family and next_node's value '

*  last_wagon ***THIS WAS ACTUALLY THE LAST WAGON!
if head.next_node == nil, current_wagon = head
If appended, current wagon is a new Node.
  current_wagon = @head.next_node
if appended again, the current wagon is @head.next_node.next_node,
    ...or current_wagon now equals current_wagon.next_node


Do I need a current_wagon?
current wagon is found by associating a new counter starting at the
head for
def current

end






*  next_wagon is the same as current_wagon.next_node

* previous_wagon has 2 parts - split into two methods?
  1 - getting a place number (p#) for current wagon
  2 - then doing a .times loop starting at the head to p#-1
  but what does it do?
    starting place = @head.next_node
    (count -1).times do
      @head.next_node.next_node



  def to_string
    family_string = "The #{@head.surname} family"
    if @all_nodes == 1
      return family_string
    end

    wagon = @head
    "The #{@head.surname} family"
    while wagon.next_node != nil
      wagon = wagon.next_node
      return family_string << "followed by the #{wagon.surname} family "
    end
  end

  potential_last_wagon = @head
  while potential_last_wagon.next_node != nil
    potential_last_wagon = potential_last_wagon.next_node
  end
  return potential_last_wagon
