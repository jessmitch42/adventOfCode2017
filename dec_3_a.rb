num = 347991;


# puts Math.sqrt(num) = 589.9076198863684
# the square is 589 blocks * 589 blocks plus whatever blocks are left over


sqrt = Math.sqrt(num)

sq_dim = sqrt.floor
half_sq = (sq_dim - 1) / 2
# puts half_sq
steps_from_end = num - (sq_dim * sq_dim)
# puts steps_from_end
rm_left_row = steps_from_end - (sq_dim + 1)
# puts rm_left_row
#
from_top_right = sq_dim - rm_left_row
# puts from_top_right
left_to_mid = half_sq - from_top_right
puts left_to_mid
down = half_sq + 1

total = left_to_mid + down

puts total

# ANSWER: 480

# 479 too low :()
