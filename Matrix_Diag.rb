# Enter your code here. Read input from STDIN. Print output to STDOUT
require "matrix"
n=gets.chomp.to_i
arr=Array.new
for i in 0...n
    arr[i] = gets.chomp.split(" ").map(&:to_i)
end
matrix = Matrix.rows(arr,false)
diagonal1_sum=0
for i in 0...n
   diagonal1_sum+=matrix.component(i,i) 
end
diagonal2_sum=0
for i in 0...n
   diagonal2_sum+=matrix.component(n-i-1,i)
end
puts  (diagonal1_sum-diagonal2_sum).abs   