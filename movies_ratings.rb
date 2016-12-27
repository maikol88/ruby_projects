# Hash with movies and ratings
movies = { alien: 8, prometheus: 9, interstellar: 10, lyudmila: 6, zoo: 3 }

puts 'What do you want to do?'
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

input = gets.chomp.downcase

case input
when 'add'
  puts 'What movie do you want to add?'
  new_movie = gets.chomp.downcase
  # if it doesnt exist, enter rating and print
  if movies[new_movie.intern].nil?
    puts "What's its rating?"
    rating = gets.chomp.to_s
    movies[new_movie] = rating
    puts movies
  # if it exists print message
  else
    puts "Movie exists! It has a rating of #{movies[new_movie.intern]}"
  end
when 'update'
  puts 'What movie do you want to update?'
  up_movie = gets.chomp.downcase
  if movies[up_movie.intern].nil?
    puts 'That movie is not in the database!'
  else
    puts 'What rating do you want to assign?'
    up_rating = gets.chomp.to_i
    movies[up_movie.intern] = up_rating
    puts "Movie updated! Rating for #{up_movie} is #{movies[up_movie.intern]} "
    movies.each { |key, value| puts "#{key}: #{value}" }
  end
when 'display'
  puts 'Here are the movies and its ratings: '
  movies.each_pair { |key, value| puts "#{key}: #{value}" }
when 'delete'
  puts 'What movie do you want to delete?'
  del_movie = gets.chomp.downcase
  # if it doesnt find it it should say it doesnt exists
  if movies[del_movie.intern].nil?
    puts "That movie doesn't exist!"
  # when it finds it it should delete
  else
    movies.delete(del_movie.intern)
    puts 'Movie has been deleted, see below: '
    movies.each { |key, value| puts "#{key}: #{value}" }
  end
else
  puts 'You did not select any of the given options!'
end
