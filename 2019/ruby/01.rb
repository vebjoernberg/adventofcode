input = File.readlines('/Users/vebjornb/Code/adventofcode/2019/input/input01.txt').map(&:to_i)

# task 1
result = input.map{ |x| x.div(3) - 2 }.sum
p result

def calculate_fuel(weight)
  fuel = weight.div(3)-2
  if fuel > 0
    fuel + calculate_fuel(fuel)
  else
    return 0
  end
end

# task 2
ekstra = input.map{ |x| calculate_fuel(x) }
p ekstra.sum

