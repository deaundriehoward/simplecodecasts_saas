class ContactMailer < ActionMailer::Base
 default to: "deaundrie7@gmail.com
 "
    def contact_mail(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: "Contact From ")
    end
    
end