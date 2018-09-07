def row_sum_odd_numbers(n)
  row_number = 1
  row_length = 1
  odd_number = 0
  triangle = []
  n.times do
    row = []
    until row.length == row_length do
      if odd_number % 2 != 0
        row << odd_number
        odd_number += 1
      else
        odd_number += 1
      end
    end
    triangle << row
    row_number += 1
    row_length += 1
  end
  return triangle[n-1].inject("+")
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
