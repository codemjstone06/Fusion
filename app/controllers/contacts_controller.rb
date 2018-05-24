class ContactsController < ApplicationController


  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    redirect_to contact_path(@contact)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :enquiry)
  end    

end
