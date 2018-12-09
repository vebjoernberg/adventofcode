
def returnChecksum(path)
  arr = IO.readlines(path)
  x = 0
  y = 0
  arr.each { |a|
    temp = charOccurrences(a)
    puts temp
    if temp.include?(2)
      x+=1
    end
    if temp.include?(3)
      y+=1
    end
  }
  x*y
end

def charOccurrences(string)
  occurences = {}
  string.each_char { |c|
    if occurences.key?(c)
           occurences[c] += 1
    else
      occurences[c] = 1
    end
  }
  occurences.values.uniq.delete_if{ |a| a < 2 or a > 3}
end

returnChecksum('./2018/02/input.txt')
