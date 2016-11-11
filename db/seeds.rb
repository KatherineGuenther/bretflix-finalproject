require 'csv'
filename = 'db/Collection.csv'
users = []

# Generate admin
User.find_or_create_by({:first_name => 'Bret', :last_name => 'Bassett', :email => ENV["GMAIL_USERNAME"], :password => ENV["ADMIN_PASSWORD"]})

users << User.find_or_create_by({:first_name => "Mary", :last_name => "Jones", :email => "mary@mary.com", :password => "marymary"})

users << User.find_or_create_by({:first_name => "Harry", :last_name => "Potter", :email => "harry@hogwarts.com", :password => "123456"})

Movie.generate_movie_data(filename)

