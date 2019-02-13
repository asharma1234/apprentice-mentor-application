class Mentor
    attr_accessor :first_name, :last_name, :dob, :phone, :email, :apprentice
    
    def initialize(first_name = "", last_name = "", dob = "", phone = "", email = "", apprentice = [])
        @first_name = first_name
        @last_name = last_name
        @dob = dob
        @phone = phone
        @email = email
        @apprentice = apprentice
 
    end #end of initialize
end #end of class Details
