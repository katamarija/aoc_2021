#/bin/ruby
class DayOne
  puts "Day One"

  small_test = []
  File.foreach("day1_input.txt") do |row|
    small_test << row.to_i
  end

  offset = small_test.slice(1, small_test.size)
  offset << 0
  both = small_test.zip offset

  counter = 0
  both.each do |int1, int2|
    if int2 > int1
      counter = counter+1
    end
  end

  puts counter
end
