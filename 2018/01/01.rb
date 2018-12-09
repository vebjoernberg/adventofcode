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

def frequencyReached(path)
  frequencyFound = false

  frequencies = [0]

  while frequencyFound == false do
    arr = IO.readlines(path)
    for num in arr
      value = frequencies.last.to_i + num.to_i
      if frequencies.include?(value)
        frequencyFound = true
        break
      else
        frequencies.insert(-1, value)
        puts frequencies
      end
    end
  end
end

frequencyReached('./2018/01/input.txt')
