require 'set'

class GraphNode
    attr_accessor :value, :neighbors 

    def initialize(value)
        @value = value
        @neighbors = []
    end
    
    
end
require "byebug"
def bfs(starting_node, target_value, visited = Set.new())
    # debugger
    return 0 if (visited.include?(starting_node.value))
    return starting_node if target_value == starting_node.value
    
    visited.add(starting_node.value)
    target_node = []
    i = 0
    while i < starting_node.neighbors.length
        target_node << bfs(starting_node.neighbors[i], target_value, visited)
        i+=1
    end
    target_node
end
a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
# debugger
p bfs(a, "c")