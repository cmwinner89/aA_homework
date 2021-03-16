class Stack
    def initialize
      # create ivar to store stack here!
      @stack_arr = []
    end

    def push(el)
      # adds an element to the stack
      stack_arr.push(el)
    end 

    def pop
      # removes one element from the stack
      stack_arr.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      puts stack_arr.last
    end
    private

    attr_reader :stack_arr
  end

  #QUEUEEUUE

  class Queue
    def initialize
        #create arr to preform queue actions on
        @que = []
    end

    def enqueue(el)
        #adds to the end of the queue
        que.push(el)
    end

    def dequeue
        #removes from the front of the queue
        que.shift
    end

    def peek
        #return and print out the first person in the queue
        puts que.first
    end

    private
    attr_reader :que
  end

  class Map
    def initialize
        #create map 2D-Array with subarrs with length 2
        under = Array.new(10) {Array.new(2)}
    end

    def set(key, value)
         #set each unique (key, value) pair
        pair_idx = under.index {|pair| pair[0] == key}
        if pair_index
            under[pair_index][1] = value
          else
            under.push([key, value])
          end
          value
       
    end

    def get(key)
        underlying_array.each { |pair| return pair[1] if pair[0] == key }
        nil
    end
    
    def delete(key)
        value = get(key)
        underlying_array.reject! { |pair| pair[0] == key }
        value
    end

    private
    attr_reader :map

    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
      end  
  end