def orderer(array, descending = false)
  if array.is_a? Array
    if descending == false
      array.sort! { |a, b| a <=> b }
    elsif descending == true
      array.sort! { |a, b| b <=> a }
    end
  else
    puts 'An array must be provided.' + array.to_s + ' is not an array.'
  end
end
array = [4, 2, 5, 1, 3, 7, 6]
array2 = %w(f a c z y b w)
array3 = 'Jorge'
array4 = 2.34

puts orderer(array, true).to_s
puts orderer(array2).to_s
puts orderer(array3).to_s
puts orderer(array4).to_s
