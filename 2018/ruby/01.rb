input = File.readlines('/Users/vebjornb/Code/adventofcode/2018/input/input01.txt').map(&:to_i)

puts input.sum

require 'set'

frequency = 0
frequencies = Set[frequency]

input.cycle { |value|
	frequency += value
	if frequencies.include?(frequency)
		p frequency
		break
	end
	frequencies.add(frequency)
}




