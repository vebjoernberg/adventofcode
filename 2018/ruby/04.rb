input = File.readlines('/Users/vebjornb/Code/adventofcode/2018/input/input04.txt').map(&:to_s).collect(&:strip)

units = ('a'..'z').map { |letter| letter + letter.upcase }

#pp = units.cycle { |unit| input[0].delete(unit) }

units.cycle.each { |unit|
  input.delete!(unit)
  break unless $&
}

