class Stack
    # First, create the Stack class and set it up to initialize an instance variable @stack that points to an empty array.
    def initialize(limit = nil)
        @stack = []
        # Modify your Stack#initialize method to take an optional limit value and set that as an attribute.
        @limit = limit
    end

    # Stack#push(value): add an element to the top of the stack
    def push(item)
        # Update the Stack#push value to only push the passed-in value if there's still room in the Stack. If the Stack is full, the method should throw an error.
        raise "Stack Overflow" if full?
        @stack.push(item)
    end

    # Stack#pop: remove the element at the top of the stack
    def pop
        @stack.pop
    end

    # Stack#peek: return the value of the element at the top of the stack without removing it
    def peek
        @stack.last
    end

    # Stack#size: returns the number of elements contained in the Stack
    def size 
        @stack.length
    end

    # Stack#empty?: returns true if the Stack is empty; false otherwise
    def empty?
        @stack.empty?
    end

    # Stack#full?: returns true if the Stack is full; false otherwise
    def full?
        @limit && @stack.size == @limit
    end

    # Stack#search(value): returns the distance between the top of the stack and the target element if it's present; -1 otherwise
    def search(target)
        @stack.each_with_index do |item, idx|
            return size - idx - 1 if item == target
        end

        -1
    end
end