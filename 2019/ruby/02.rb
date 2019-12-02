input = File.read('/Users/vebjornb/Code/adventofcode/2019/input/input02.txt').split(',').map(&:to_i)

input[1] = 12
input[2] = 2

input.each_slice(4) { |a|
  unless a.first == 99
    input[a.last] = a.first.even? ? input[a[1]] * input[a[2]] : input[a[1]] + input[a[2]]
  else
    break
  end
}

p input[0]

