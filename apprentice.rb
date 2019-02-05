class Apprentice
    attr_accessor :first_name, :last_name, :dob, :phone, :email, :id
    
 def initialize(first_name = "", last_name = "", dob = "", phone = "", email = "", id = Time.now.to_i)
     @first_name = first_name
     @last_name = last_name
     @dob = dob
     @phone = phone
     @email = email
     @id = id
 
 end #end of initialize
end #end of class Details
