class Mentor
    attr_accessor :first_name, :last_name, :dob, :phone, :email, :apprentices
    
    def initialize(first_name = "", last_name = "", dob = "", phone = "", email = "", apprentices = [])
        @first_name = first_name
        @last_name = last_name
        @dob = dob
        @phone = phone
        @email = email
        @apprentices = apprentices
 
    end #end of initialize
end #end of class Details
