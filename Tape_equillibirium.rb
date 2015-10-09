# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
    # write your code in Ruby 2.2
    len=a.length
    min_sum=1.0/0
    for i in 0...len-1
        abs_diff=(a[0..i].reduce(:+)-a[i+1..len-1].reduce(:+)).abs
        puts "#{a[0..i].reduce(:+)}:#{a[i+1..len-1].reduce(:+)}"
        puts abs_diff
        min_sum=abs_diff if abs_diff < min_sum 
    end
    return min_sum
end

print solution(  [3, 1, 2, 4, 3] )