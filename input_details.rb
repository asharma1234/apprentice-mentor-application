require 'yaml'
require './apprentice.rb'
require './mentor.rb'

data_struture = {
  :apprentices => [],
  :mentors => [] 
}

loop do
    puts "Welcome to the details"
    puts "1. Add Apprentice"
    puts "2. Add Mentor"
    puts "3. List of Apprentice"
    puts "4. List of Mentors"
    puts "5. Exit"
    puts "\n"
    puts "Enter your choice:"
    input = gets.chomp

    case input
    when '1'
        ap = Apprentice.new
        puts "Tell me appprentice details"
        print "First Name: "
        ap.first_name = gets.chomp
        print "Last Name: "
        ap.last_name = gets.chomp
        print "Date of Birth: "
        ap.dob = gets.chomp
        print "Phone Number: "
        ap.phone = gets.chomp
        print "Email: "
        ap.email = gets.chomp
        data_struture[:apprentices] << ap
        File.write("./input_details.yml", YAML.dump(data_struture), mode: 'w')
     
    when '2'
        men = Mentor.new
        puts "Tell me mentor details"
        print "First Name: "
        men.first_name = gets.chomp
        print "Last Name: "
        men.last_name = gets.chomp
        print "Date of Birth: "
        men.dob = gets.chomp
        print "Phone Number: "
        men.phone = gets.chomp
        print "Email: "
        men.email = gets.chomp
        data_struture[:mentors] << men
        File.write("./input_details.yml", YAML.dump(data_struture), mode: 'w')

    when '3'
        #ap_details = YAML.load(File.read("./input_details.yml"))[:apprentices]
        #puts ap_details.inspect
        if(!File.zero?("./input_details.yml"))
            data_struture = YAML.load(File.read("./input_details.yml"))
            apprentices = data_struture[:apprentices]
            puts "\n"
            puts "Apprentice detail is:"
            puts "\n"
            format = '%-12s %-12s %-12s %-12s %-15s'
            puts format % ['First Name', 'Last Name', 'Date of Birth', 'Phone', 'Email']           
            apprentices.each do |a|
                puts format % [a.first_name, a.last_name, a.dob, a.phone, a.email]
            end 
        end
        
    when '4'
        #men_details = YAML.load(File.read("./input_details.yml"))[:mentors]
        #puts men_details.inspect
        if(!File.zero?("./input_details.yml"))
            data_struture = YAML.load(File.read("input_details.yml"))
            mentors = data_struture[:mentors]
            puts "\n"
            puts "Mentor detail is:"
            puts "\n"
            format = '%-12s %-12s %-12s %-15s %-15s'
            puts format % ['First Name', 'Last Name', 'Date of Birth', 'Phone', 'Email']           
            mentors.each do |b|
                puts format % [b.first_name, b.last_name, b.dob, b.phone, b.email]
            end
        end

    when '5'
        exit()
        break
    end
end
        