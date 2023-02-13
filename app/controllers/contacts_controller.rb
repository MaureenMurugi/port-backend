class ContactsController < ApplicationController

    def index
        contacts = Contact.all
        render json: contacts
    end

    def create
        contact = Contact.create(contact_params)
        render json: contact, status: :created
    end

    private

    def contact_params
        params.require(:contact).permit(:firstname, :lastname, :email,:phonenumber, :message);
    end
end

