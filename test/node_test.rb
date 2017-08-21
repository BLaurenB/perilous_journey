gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/node' # use .. to go back 1 level
require 'pry'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new('Burke')
    assert_instance_of Node, node
  end

  def test_it_has_a_surname
    node = Node.new('Burke')
    assert_equal 'Burke', node.surname
  end

  def test_it_has_a_different_surname
    node = Node.new('Jones')
    assert_equal 'Jones', node.surname
  end


  def test_it_has_a_next_node
    node = Node.new("Burke")
    assert_nil node.next_node
  end
end #class end
