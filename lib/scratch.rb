> require "./lib/linked_list"
> list_a = LinkedList.new
=> <LinkedList @head=nil #45678904567>
> list_a.head
=> nil
> list_a.append("Rhodes")
=> "Rhodes"
> list_a
=> <LinkedList @head=<Node @surname="Rhodes" ... > #45678904567>
> list_a.head
=> <Node @surname="Rhodes" @next_node=nil #5678904567890>
> list_a.head.next_node
=> nil
> list_a.append("Hardy")
=> "Hardy"
> list_a.head.next_node
=> <Node @surname="Hardy" @next_node=nil #5678904567890>
> list_a.count
=> 2
> list_a.to_string
=> "The Rhodes family, followed by the Hardy family"
