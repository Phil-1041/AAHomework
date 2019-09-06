class Stack
    def initialize
      @ivar = []
    end

    def push(el)
      @ivar << el
    end

    def pop
      # removes one element from the stack
      @ivar = @ivar[0..-2]
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @ivar[0]
    end
end

#   stack = Stack.new
#   stack.push(1)
#    stack.push(2)
#     stack.push(3)
#      stack.push(4)
# p stack
# p stack.pop
# p stack.peek

class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue[-1]
    end

end

#   queue = Queue.new
#   queue.enqueue(1)
#    queue.enqueue(2)
#     queue.enqueue(3)
#      queue.enqueue(4)
# p queue
# p queue.dequeue
# p queue.peek

class Map

    def initialize
        @arr = Array.new
    end

    def set(key, value)
        if get(key) #if this is true
            @arr.each do |pairs|
                pairs[1] = value if pairs[0] == key
            end
        else
            @arr << [key, value]
        end
    end

    def get (key)
        
        @arr.each do |pairs|
            return pairs if pairs[0] == key
        end
        
        return false

    end

    def delete (key)
        if get(key)
            @arr.each_with_index do |pairs, idx|
                @arr[idx] = [] if pairs[0] == key
            end
        else
            return "no key"
        end
    end

    def show
        p @arr
    end

end

map = Map.new
map.set(1,'a')
map.set(2,'b')
map.set(4,:c)
map.set(20,:d)
map.show

map.delete(4)
map.show

p map.get(20)