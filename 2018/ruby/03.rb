arr = Array.new(1000) {
  Array.new(1000,0)
}
carpets = IO.readlines('./2018/03/input.txt')
id = 0
carpets.each {|carpet|
  piece = carpet.split(' ')
  row = [piece[2].split(':')[0].split(',')[1].to_i, piece[2].split(':')[0].split(',')[1].to_i + piece[3].split('x')[1].to_i - 1]
  col = [piece[2].split(':')[0].split(',')[0].to_i, piece[2].split(':')[0].split(',')[0].to_i+ piece[3].split('x')[0].to_i - 1]
  (row[0]..row[1]).each {|t|
    (col[0]..col[1]).each {|s|
      arr[t][s] += 1
      if arr[t][s] == 2 then id = piece[0][1..-1].to_i end
    }
  }
}
count = 0
arr.each {|row|
  row.each {|inch|
    if inch.to_i>1
      count +=1
    end
  }
}
p count

carpets.each { |carpet|
  single = true
  piece = carpet.split(' ')
  row = [piece[2].split(':')[0].split(',')[1].to_i, piece[2].split(':')[0].split(',')[1].to_i + piece[3].split('x')[1].to_i - 1]
  col = [piece[2].split(':')[0].split(',')[0].to_i, piece[2].split(':')[0].split(',')[0].to_i+ piece[3].split('x')[0].to_i - 1]
  (row[0]..row[1]).each {|t|
    (col[0]..col[1]).each {|s|
      if arr[t][s] > 1 then single = false end
    }
  }
  if single == true then p piece[0][1..-1].to_i end
}