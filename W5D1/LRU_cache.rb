class LRUCache

    def initialize(max_size)
        @max_size = max_size
        @underlying_array = [] # [[a, 1], [b, 5]]
    end

    def count
        @underlying_array.length
    end

    def add(el)
        # adds element to cache according to LRU principle
        min_val = 10000
        index = 0
        @underlying_array.each do |pair|
            if @underlying_array.length + 1 < @max_size
                if pair.first == el
                    pair.last += 1
                else
                    @underlying_array << [el, 1]
                end
            else
                @underlying_array.each_with_index do |el, idx|
                    if el.last < min_val 
                        min_val = el.last 
                        index = idx
                    end
                end
                @underlying_array.delete_at(index)
                @underlying_array << [el, 1]
            end
        end
        @underlying_array
    end

    def show
        # shows the items in the cache, with the LRU item first
        @underlying_array.each do |el|
            p el.first
        end
    end

    private
    # helper methods go here!

end



johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]