input = File.readlines('/Users/vebjornb/Code/adventofcode/2019/input/input01.txt').map(&:to_i)

result = input.map{ |x| x.div(3) - 2 }.sum

p result


