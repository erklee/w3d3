#min stays the same
#max decrements until max < min

def range(min, max)
    return [] if max < min 
    range(min, max - 1) << max ## range (1, 4), range(1,3), range(1,2)....

end

def itr_range(min, max)
    (min..max).map {|num| num}
end

# p range(1,5)
# p itr_range(1, 5)


##
def exp(base, power)
   return 1 if power == 0
   base * exp(base, power - 1)

end

def exp2(base, power)
    return 1 if power == 0
    half = exp2(base, power / 2)
    if power.even?
        half * half
    else
        base * half * half 
    end
end

# p exp2(2,4)

# p exp2(2,5)

class Array
    def deep_dup
        new_arr = []

        self.each do |ele|
            if ele.is_a?(Array)
                new_arr << ele.deep_dup
            else
                ele
            end
        end

        new_arr
    end
end

def itr_fibonacci(n)
    return [0] if n == 1
    return [1] if n == 2

    seq = [0, 1]

    while seq.length < n
        seq << seq[-2] + seq[-1]

    end
    seq 
end

def rec_fibonacci(n)
    if n <= 2
        [0,1].take(n)
    else
        fibo_array = rec_fibonacci(n - 1)
        fibo_array << fibo_array[-2] + fibo_array[-1]
    end

end

# p rec_fibonacci(6)

# def bsearch(array, target)
#     return nil if array.empty?

#     mid_idx = array.length / 2

#     left = []
#     right = []

#     if array[mid_idx] > target
#         left += array[0...mid_idx]
#     elsif array[mid_idx] == target
#         bsearch(left,target)
#     else
#         right += array[mid_idx + 1 ..-1]
#         bsearch(right, target)
#     end
     

# end

def bsearch(array, target)
    return nil if array.empty?
  
    mid_idx = array.length / 2
  
    left = array[0...mid_idx]
    right = array[mid_idx + 1..-1]
  
    if array[mid_idx] == target
      return mid_idx
    elsif array[mid_idx] > target
      return bsearch(left, target)
    else
      result = bsearch(right, target)
      if result.nil?
        return nil
      else
        return mid_idx + 1 + result ## result is right index
      end 
    end
end


p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort
    
end