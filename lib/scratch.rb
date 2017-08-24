require "./lib/linked_list"
list = LinkedList.new
list.append("A")



A -> B -> C -> D -> E

wagon = @head # A
wagon.next_node # B
wagon.next_node.next_node # C


list.pop
The Henderson family has died of dysentery
=> <Node surname="Henderson" next_node=nil #5678904567890>
> list.pop
The Brooks family has died of dysentery
=> <Node surname="Brooks" next_node=nil #5678904567890>
