@intCodeProgram = [1,12,2,3,1,1,2,3,1,3,4,3,1,5,0,3,2,1,6,19,1,9,19,23,2,23,10,27,1,27,5,31,1,31,6,35,1,6,35,39,2,39,13,43,1,9,43,47,2,9,47,51,1,51,6,55,2,55,10,59,1,59,5,63,2,10,63,67,2,9,67,71,1,71,5,75,2,10,75,79,1,79,6,83,2,10,83,87,1,5,87,91,2,9,91,95,1,95,5,99,1,99,2,103,1,103,13,0,99,2,14,0,0]

#start at index 0: if 1,2 or 99
# 99 break
# 1 add
# 2 multiply

# two after input position
# third output position
# step forward 4 positions for next opcode 

# replace position 1 with value 12
# replace position 2 with value 2

#what is position 0 after program halts?

def do_opcode(indexZero)
    case @intCodeProgram[indexZero]
    when 99
      puts "hit 99, program finished"
    when 1
      puts "add"
      pos1 = @intCodeProgram[indexZero+1]     #run to see that first opcode works right 
      pos2 = @intCodeProgram[indexZero+2]
      pos3 = @intCodeProgram[indexZero+3]
      val1 = @intCodeProgram[pos1]
      val2 = @intCodeProgram[pos2]
      sum = val1 + val2
      @intCodeProgram[pos3] = sum
      puts @intCodeProgram.inspect
    when 2
      puts "multiply"
      pos1 = @intCodeProgram[indexZero+1]
      pos2 = @intCodeProgram[indexZero+2]
      pos3 = @intCodeProgram[indexZero+3]
      val1 = @intCodeProgram[pos1]
      val2 = @intCodeProgram[pos2]
      product = val1 * val2
      @intCodeProgram[pos3] = product
      puts @intCodeProgram.inspect
    else
      puts"Error"
    end
end

def opcode_loop
    #call do_opcode for each 4 set in array, add 4 to starting index each time
      
    index = 0
    until index > 112
        do_opcode(index)
        index += 4
    end

end

# puts @intCodeProgram[112]      #highest index 
 puts @intCodeProgram.inspect    #print before array 
 opcode_loop                     #print after array
 puts "DAY 2 part 1 answer is #{@intCodeProgram[0]}"






