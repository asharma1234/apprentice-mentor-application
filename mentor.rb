class Mentor
    attr_accessor :first_name, :last_name, :dob, :phone, :email, :assigned_apprentices
    
 def initialize(first_name = "", last_name = "", dob = "", phone = "", email = "", assigned_apprentices = "")
     @first_name = first_name
     @last_name = last_name
     @dob = dob
     @phone = phone
     @email = email
     @assigned_apprentices = assigned_apprentices
 
 end #end of initialize
end #end of class Details


