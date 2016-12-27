puts 'Enter phrase: '
phrase = gets.chomp
puts 'Enter word to redact: '
word_to_redact = gets.chomp

word_splitter = phrase.split(' ')

word_splitter.each do |word|
  if word != word_to_redact
    print word + ' '
  else
    print 'REDACTED '
  end
end
