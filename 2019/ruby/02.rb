input = File.read('/Users/vebjornb/Code/adventofcode/2019/input/input02.txt').split(',').map(&:to_i)

def intcode_computer(instruction, noun, verb)
  instruction[1]=noun
  instruction[2]=verb
  instruction.each_slice(4) { |a, b, c, d|
    unless a == 99
      instruction[d] = a.even? ? instruction[b] * instruction[c] : instruction[b] + instruction[c]
    else
      break
    end
  }
  instruction[0]
end

# Oppgave 1
temp = input.dup
p intcode_computer(temp, 12, 2)

# Oppgave 2
(0..99).each { |x|
  (0..99).each { |y|
    temp = input.dup
    result = intcode_computer(temp, x, y)
    if result == 19690720
      p x, y
      break
    end
  }
}


