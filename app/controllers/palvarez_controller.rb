class PalvarezController < ApplicationController
  def inicio
    if @email.nil?
  	 @email = Email.new

    end
  end

  def enviaMail

  	
  	@email=Email.new(email_params)
    
        if(@email.email=='' || @email.nombre=="" || @email.mensaje=='')
               flash[:alert] = "El nombre, email y el mensaje son necesarios."
               redirect_to root_path + "#contactar"
            else

             ApplicationMailer.emailContacto(@email).deliver_now
             flash[:notice] = "Se ha enviado el mensaje, en breve tendrás noticias nuestras."
             redirect_to root_path + "#contactar"
            end 
   
     
  end

  private
  def valid_email?(email)
    
    valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    email.present? && (email =~ valid_email_regex) 
  end


  private
  def email_params
    params.require(:email).permit(:nombre, :telefono,:mensaje,:email)
  end

end
