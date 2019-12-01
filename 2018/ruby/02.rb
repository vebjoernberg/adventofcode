input = File.readlines('/Users/vebjornb/Code/adventofcode/2018/input/input02.txt').map(&:to_s).collect(&:strip)


twos, threes = input.map { |line|
  occurances = line.chars.uniq.map { |char|
    line.count char
  }
  twos = occurances.include? 2
    threes = occurances.include? 3
    [twos, threes]
}.transpose.map { |number|
  number.count true
}

p twos * threes




