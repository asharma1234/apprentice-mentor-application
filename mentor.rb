class Mentor
    attr_accessor :first_name, :last_name, :dob, :phone, :email
    
 def initialize(first_name = "", last_name = "", dob = "", phone = "", email = "")
     @first_name = first_name
     @last_name = last_name
     @dob = dob
     @phone = phone
     @email = email
 
 end #end of initialize
end #end of class Details




 # SOW 
 # create two classes apprentice and mentor that represents as per name
 # WAS to add in apprentice details or mentor details into a yml file.
 # read from the yml file and display