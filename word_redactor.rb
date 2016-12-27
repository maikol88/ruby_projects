puts "\nEnter text to go through: "
text = gets.chomp

puts "\nThen, enter the word to redact: "
word_to_redact = gets.chomp

words = text.split(' ')

puts "\nRedacted text: "
words.each do |word|
  if word != word_to_redact
    print word + ' '
  else
    print 'REDACTED '
  end
end
puts "\n\n"
