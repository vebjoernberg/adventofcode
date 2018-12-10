def addNumbersInFile(path)
  arr = IO.readlines(path)
  sum = 0
  arr.each {
    |a| sum+=a.to_i
  }
  sum
end

p addNumbersInFile('./2018/01/input.txt')

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
        return frequency
      else
        indexFrequencyMap[frequency] = index
      end
      index += 1
    end

  end
end

p frequencyReachedTwice('./2018/01/input.txt')
