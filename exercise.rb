require 'httparty'

# Let's make the first API call to this URL ("endpoint") together:
toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

# Now we can convert that JSON response into a Ruby hash:
toronto_wards_json = JSON.parse(toronto_wards_response.body)

# Exercise 1
# Iterate through your new hash and display the name of each ward in the collection.
toronto_wards_json["objects"].each { |object| puts object["name"]}





# Let's make the first API call to this URL ("endpoint") together:
candidates_response = HTTParty.get('https://represent.opennorth.ca/candidates/')

# Now we can convert that JSON response into a Ruby hash:
candidates_response_json = JSON.parse(candidates_response.body)

puts
puts
# Exercise 1
# Iterate through your new hash and display the name of each ward in the collection.
candidates_response_json["objects"].each { |object| puts "#{object["district_name"]}: #{object["name"]}"}
