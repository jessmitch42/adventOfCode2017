arr = [1, 2, 3, 4, 5]

new_arr = arr

puts new_arr # 1 2 3 4 5

arr = arr.collect!{ |v| v + 1 }

puts new_arr # 2 3 4 5 6
