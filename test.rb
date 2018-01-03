arr = [1, 2, 3, 4, 5]

new_arr = arr

puts arr # 1 2 3 4 5

new_arr = [1, 2, 3, 4, 5].collect{ |v| v + 1 }

puts arr # 1 2 3 4 5
