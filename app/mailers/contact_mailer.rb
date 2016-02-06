class ContactMailer < ActionMailer::Base
<<<<<<< HEAD
 default to: "deaundrie7@gmail.com"
=======
 default to: 'deaundrie7@gmail.com'
>>>>>>> master
 
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact Form Message')
    end
    
end