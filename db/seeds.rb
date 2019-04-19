#this file contains things that we want to populate the db with
#is loaded with rails db:seed command.

if Breed.count == 0

    Snake.names.each do |name|
        Breed.create(name: name.downcase.strip)
        puts "#{name} created."
    end

end