dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(hash)
  return hash.keys.map { |cityname| "- #{cityname}" }.join("\n")
end
 
# Get area code based on given hash and key
def get_area_code(hash, key)
  return hash[key];
end
 
# Execution flow
loop do
  puts 'Do you want to lookup an area code based on a city name? (Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y'

  puts get_city_names dial_book
  print 'city: '
  input = gets.chomp

  if dial_book.include? input
    area_code = get_area_code dial_book, input
    puts "Area code for #{input} is: #{area_code}"
  else
    puts "Invalid city name"
  end
end
