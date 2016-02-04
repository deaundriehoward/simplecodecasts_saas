class ContactsController < ApplicationController
    #Creates a new contact
    def new
        @contact = Contact.new
    end
    
    #Creates New Contact
    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save
            name = params[:contact][:name] #Saves Name
            email = params[:contact][:email] #Saves Email
            body = params[:contact][:comments] #Saves Comment
            
            ContactMailer.contact_email(name, email, body).deliver
            
            #Flashes Message if message was a success
            flash[:success] = "Message Sent."
            redirect_to new_contact_path
        else
            #Flashes Message if message was a failure
            flash[:danger] = "Error occured, message not sent"
            redirect_to new_contact_path
        end    
        
    end
    
    #Required Parameters for Contact Form
    private
        def contact_params
        params.require(:contact).permit(:name, :email, :comments)
        end
end
