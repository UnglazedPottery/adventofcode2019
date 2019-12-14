noun = 1
verb = 1 

puts "#{noun} #{verb}"
until noun > 3
    puts "noun #{noun}"
    until verb > 3
        puts "#{noun} #{verb}"
        verb += 1
        puts "verb #{verb}"
    end
    noun += 1
    puts "noun2 #{noun}"
end