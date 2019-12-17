input = File.readlines('/Users/vebjornb/Code/adventofcode/2019/input/input03.txt').map{ |line|
  line.split(",").collect(&:strip)
}

def create_point(current, wire)
  points = []
  wire.each{ |path|
    range = path[1..].to_i
    case path[0]
    when "L"
      range.times do
      current[0] = current[0]-1
      points << current.dup
    end
    when "R"
      range.times do
      current[0] = current[0]+1
      points << current.dup
    end
    when "D"
      range.times do current[1] = current[1]-1
      points << current.dup
    end
    when "U"
      range.times do
      current[1] = current[1]+1
      points << current.dup
      end
    end
  }
  points
end

points = []
origo = [0,0]

input.each{ |wire|
  temp = create_point(origo.dup, wire)
  points << temp
}

intersections = points[0] & points[1]

p intersections.map { |x, y| x.abs + y.abs }.min
