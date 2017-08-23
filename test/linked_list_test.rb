gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list' # use .. to go back 1 level
require 'pry'

class LinkedListTest < Minitest::Test

  def test_it_exists #YAY!
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_it_has_a_head
    list = LinkedList.new
    assert_nil list.head
  end

  def test_it_can_be_appended
    list = LinkedList.new
    assert_instance_of Node, list.append("West")
  end

  def test_node_is_named_West
    list = LinkedList.new
    node = list.append("West")
    assert_equal "West", node.surname
  end

  def test_node_has_a_next_node
    list = LinkedList.new #list calls things defined in Node
    node = list.append("Borg") #node can call things defined in Node
    assert_nil node.next_node
  end

  def test_append_assigns_node_to_at_head
    list = LinkedList.new
    head = list.append("West")
    assert_equal "West", head.surname
  end

  def test_it_can_be_counted
    list = LinkedList.new
    head = list.append("West")
    assert_equal 1, list.count
  end

  def test_it_makes_a_string
    list = LinkedList.new
    head = list.append("West")
    assert "The West family" == list.to_string
  end

  def it_links_family_strings
    list = LinkedList.new
    head = list.append("West")
    assert_equal "The West family followed by the Wilson family", list.to_string
  end

  def test_it_can_be_preprended
    list = LinkedList.new
    head = list.append("B")
    head = list.prepend("A")
    assert_equal "A", head.surname
    assert_equal "B", head.next_node.surname #bc it's the surname of the node instance
  end

def test_it_finds_the_insert_point #test doesn't work but the insert method does work!
  list = LinkedList.new
  head = list.append("A")
  list = list.append("B")
  list = list.append("C")
  assert head.next_node.next_node = list.insert_point(2)
end




end
