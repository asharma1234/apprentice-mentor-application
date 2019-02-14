class Apprentice
    attr_accessor :first_name, :last_name, :dob, :phone, :email, :id, :mentors
    
    def initialize(first_name = "", last_name = "", dob = "", phone = "", email = "", id = Time.now.to_i, mentors = [])
        @first_name = first_name
        @last_name = last_name
        @dob = dob
        @phone = phone
        @email = email
        @id = id
        @mentors = mentors
 
    end #end of initialize
end #end of class Details
