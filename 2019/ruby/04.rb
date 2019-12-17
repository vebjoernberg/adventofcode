start = 123257
stop = 647015

def increases_and_adjacent(number)
  temp = number.to_s.split('').map(&:to_i)
  (temp == temp.sort) && (temp.uniq.size < 6)
end

p (start..stop).select { |x| increases_and_adjacent(x) }.size

