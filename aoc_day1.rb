#/bin/ruby
class DayOneP1
  puts "Day One - Part 1"

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

class DayOneP2
  puts "Day One - Part 2"

  day1 = []
  File.foreach("day1_input.txt") do |row|
    day1 << row.to_i
  end
  i = 0
  counter = 0
  while i < day1.size
    one = day1.slice(i,3)
    two = day1.slice(1+i, 3)
    if two.sum > one.sum
        counter += 1
    end
    i += 1
  end
  puts counter
end

class DayTwoP1
  puts "Day Two - Part 1"
  # test = ["forward 5",
  #         "down 5",
  #         "forward 8",
  #         "up 3",
  #         "down 8",
  #         "forward 2",]
  test = []
  File.foreach("day2.txt") do |row|
    test << row
  end
  x = 0
  y = 0
  aim = 0
  i = 0
  while i < test.size
    if test[i].split[0] == "forward"
      x += test[i].split[1].to_i
      y += test[i].split[1].to_i * aim
    elsif test[i].split[0] == "down"
      aim += test[i].split[1].to_i
    else
      aim -= test[i].split[1].to_i
    end
    i += 1
  end
  puts x*y
end

class DayThreeP1
  puts "Day Three - Part 1"
  d3 = []
  File.foreach("day3.txt") { |row| d3 << row}
  for row in d3 do
    puts row
  end
  day3 = {}
  d3.each do |x|
    day3[x] = 0
  end
  puts day3.inspect

end
