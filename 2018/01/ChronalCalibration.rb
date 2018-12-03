def addNumbersInFile(path)
  arr = IO.readlines(path)
  sum = 0
  arr.each {
    |a| sum+=a.to_i
  }
  puts sum
end

addNumbersInFile('./2018/01/input.txt')

def frequencyReachedTwice(path)
  frequencyFound = false
  indexFrequencyMap = {}

  index = 0
  frequency = 0

  while frequencyFound == false do
    arr = IO.readlines(path)

    for value in arr
      frequency += value.to_i
      if indexFrequencyMap.key?(frequency)
        frequencyFound = true
        puts frequency
        break
      else
        indexFrequencyMap[frequency] = index
      end
      index += 1
    end

  end
end

frequencyReachedTwice('./2018/01/input.txt')

