str = "5	1	10	0	1	7	13	14	3	12	8	10	7	12	0	6"

# create arr of int from string above
arr = str.split.collect{|s| s.to_i}

# goal is to count how many iterations are required for n to have already occurred
n = []
so_far = []
included = false
# last_arr is what the arr looked like in the previous iteration; starts at original
counter = 0
# until they're back to the same; answer is below 1,000,000
while !included do
  # find the highest value and the index of the highest value
  if counter == 0
    n = arr
  end

  v = n.max # highest value
  i = n.index(v) # index of highest values
  i_copy = i
  i = i + 1

  while v > 0 do
    if !n[i]
      i = 0
    end

    n[i] += 1

    i = i + 1
    v = v - 1
    n[i_copy] = n[i_copy] - 1
  end



  str = n.join(",")

  if !so_far.include?(str)
    so_far << str
  else
    first_occured = so_far.index(str)
    loops = counter - first_occured
    included = true
  end

  counter += 1

end

puts "#{counter} counter"
puts "#{loops} loops"



# 1087 too high
