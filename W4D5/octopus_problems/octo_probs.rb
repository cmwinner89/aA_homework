 $fishy_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
 
 def sluggish_octopus
    biggest = ""

    $fishy_arr.each_with_index do |el1, idx1|
        $fishy_arr.each_with_index do |el2, idx2|
            if idx2 < idx1
                biggest = el1 if el1.length > el2.length
            end
        end
    end
    biggest
 end

 p sluggish_octopus

#  p sluggish_octopus
# class Array
#      def merge_sort(&prc)
#         prc ||= Proc.new{|a, b| a <=> b}
#         return self if self.count <=1

#         mid = self.length/2
#         sorted_left = self.take(mid).merge_sort(&prc)
#         sorted_right = self.drop(mid).merge_sort(&prc)

#         Array.merge(sorted_left, sorted_right, &prc)
#      end

#      def merge(left, right, &prc)
#         merged = []

#         until left.empty? || right.empty?
#             case prc.call(left.first, right.first)
#             when 1
#                 merge << right.shift
#             when 0 
#                 merged << left.shift
#             when -1
#                 merged << left.shift
#             end
#         end
#         merged.concat(left)
#         merged.concat(right)

#         merged
#      end
# end

# def dominant_octopus

#     prc = Proc.new {|a, b| b <=> a}

#     # $fishy_arr.merge_sort(&prc)[0]
# end

# p dominant_octopus

def clever_octopus
    big_fish = ""
    $fishy_arr.each {|fish| big_fish = fish if big_fish.length < fish.length }
    big_fish
end

def slow_dance(dir, arr)
    arr.each_with_index do |el, idx|
       return idx if el == dir 
    end
end
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p   slow_dance("up", tiles_array)