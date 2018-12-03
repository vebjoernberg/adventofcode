def addNumbersInFile
  arr = IO.readlines("input.txt")
  sum = 0
  arr.each {
    |a| sum+=a.to_i
  }
  puts sum
end

addNumbersInFile
