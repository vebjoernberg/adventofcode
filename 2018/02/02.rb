
def returnChecksum(path)
  arr = IO.readlines(path)
  x = 0
  y = 0
  arr.each { |a|
    temp = charOccurrences(a)
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

 p returnChecksum('./2018/02/input.txt')

def findAlmostAnagram(path)
    arr = IO.readlines(path).map(&:chomp)
    arr.combination(2).any? {|a, b|
      wrongs = 0
      for x in 0..a.length - 1
        if a[x] != b[x]
          wrongs += 1
        end
      end
      if wrongs == 1
        return wrongs, a, b
      end
    }

end

p findAlmostAnagram('./2018/02/input.txt')