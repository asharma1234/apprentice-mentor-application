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
    puts "5. Assign a mentor"
    puts "6. Show Apprentice with assigned mentor"
    puts "7. Exit"
    puts "\n"
    puts "Enter your choice:"
    input = gets.chomp

    case input
    when '1'
        new_apprentice = Apprentice.new
        puts "Tell me appprentice details"
        print "First Name: "
        new_apprentice.first_name = gets.chomp
        print "Last Name: "
        new_apprentice.last_name = gets.chomp
        print "Date of Birth: "
        new_apprentice.dob = gets.chomp
        print "Phone Number: "
        new_apprentice.phone = gets.chomp
        print "Email: "
        new_apprentice.email = gets.chomp
        data_struture[:apprentices] << new_apprentice
        File.write("./input_details.yml", YAML.dump(data_struture), mode: 'w')

    when '2'
        new_mentor = Mentor.new
        puts "Tell me mentor details"
        print "First Name: "
        new_mentor.first_name = gets.chomp
        print "Last Name: "
        new_mentor.last_name = gets.chomp
        print "Date of Birth: "
        new_mentor.dob = gets.chomp
        print "Phone Number: "
        new_mentor.phone = gets.chomp
        print "Email: "
        new_mentor.email = gets.chomp
        data_struture[:mentors] << new_mentor
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
        if(!File.zero?("./input_details.yml"))
            data_structure = YAML.load(File.read("./input_details.yml"))
            apprentices = data_structure[:apprentices]
            puts "\n"
            puts "Display all the apprentices"
            puts "\n"
            format = '%-12s %-12s %-12s'
            puts format % ['SN', 'First Name', 'Last Name']
            apprentices.each_with_index do |g, i|
                puts format % [i+=1, g.first_name, g.last_name]
            end
            puts "Select a apprentice"
            input = gets.chomp           
            input_index = input.to_i - 1 
            selected_apprentice = apprentices[input_index]
            puts "Selected apprentice is #{selected_apprentice.inspect}"
            
            puts "\n"
            mentors = data_structure[:mentors]
            puts "Mentors' list"
            puts "\n"
            format = '%-12s %-12s %-12s'
            puts format % ['SN', 'First Name', 'Last Name']
            mentors.each_with_index do |h, j|
                puts format % [j+=1, h.first_name, h.last_name]
            end
            puts "Select a mentor for #{selected_apprentice}: "
            input = gets.chomp
            input_index = input.to_i - 1 
            selected_mentor = mentors[input_index]
            puts "Selected mentor is #{selected_mentor.inspect}"
            assigned_mentor = Apprentice.new
            assigned_mentor.mentor = selected_mentor
            puts assigned_mentor.mentor

        end

    when '6'
        #format = '%-20s %-20s'
        #puts format % ['Apprentice Name', 'Mentor Name']
        #puts format % [selected_apprentice, assigned_mentor]

    when '7'
        exit()
        break
    end
end
