class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save 
      redirect_to contacts_path
    else
      render :new
    end
  end



  private

  def contact_params
    params.require(:contact).permit(:last_name, :first_name, :address, :company, :phone, :email, :notes)
  end
end
