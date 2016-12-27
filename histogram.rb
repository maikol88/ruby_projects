puts 'Enter text:'
text = gets.chomp

word_array = text.split(' ')
histogram_hash = Hash.new(0)

word_array.each { |word| histogram_hash[word] += 1 }
histogram_hash.sort_by { |_a, b| b }
puts "\nSee histogram below:\n"
histogram_hash.each { |a, b| puts a + ' = ' + b.to_s }
