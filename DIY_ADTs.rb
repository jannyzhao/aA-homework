 class Stack
    def initialize
      @array = []
    end

    def push(el)
      array.push(el)
    end

    def pop
      array.pop
    end

    def peek
      array.last
    end

    private
    attr_reader :array
  end

 class Queue
    def initialize
      @array = []
    end

    def enqueue(el)
      array.push(el)
    end

    def dequeue
      array.shift
    end

    def peek
      array.first
    end

    private
    attr_reader :array
  end


class Map
    def initialize
        @array = []
    end

    def set(key, value)
        result = array.index {|ele| ele.first == key }
        if result
            array[result][1] = value
        else
            array.push([key, value])
        end
        value
    end

    def get(key)
        array.each do |else|
            return ele[1] if ele[0] == key
        end
        nil 
    end

    def delete(key)
        value = get(key)
        array.reject! {|ele| ele[0] == key }
        value
    end

    def show
        deep_dup(array)
    end

    private
    attr_reader :array

    def deep_dup(arr)
    arr.map { |ele| ele.is_a?(Array) ? deep_dup(ele) : ele }
    end  
end