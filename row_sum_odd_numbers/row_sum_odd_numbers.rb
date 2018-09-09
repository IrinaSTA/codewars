#Given the triangle of consecutive odd numbers,
#             1
#          3     5
#       7     9    11
#   13    15    17    19
# 21    23    25    27    29
#Calculate the row sums of this triangle from the row index
#(starting at index 1), e.g.
#row_sum_odd_numbers(1) = 1
#row_sum_odd_numbers(2) = 8

def row_sum_odd_numbers(n)
  row = []
  num = n * (n - 1) + 1
  row << num
  until row.length == n do
    num += 1
    row << num if num % 2 != 0
  end
  return row.inject("+")
end

class Test
  def self.assert_equals a, b
    a == b ? "Pass" : "Fail"
  end
end

puts Test.assert_equals(row_sum_odd_numbers(1), 1)
puts Test.assert_equals(row_sum_odd_numbers(2), 8)
puts Test.assert_equals(row_sum_odd_numbers(13), 2197)
puts Test.assert_equals(row_sum_odd_numbers(19), 6859)
puts Test.assert_equals(row_sum_odd_numbers(41), 68921)
