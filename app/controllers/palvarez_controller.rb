class PalvarezController < ApplicationController
  def inicio
  	@email = Email.new
  end

  def enviaMail

  	
  	@email=Email.new(email_params)
  	

  	if ApplicationMailer.emailContacto(@email).deliver_now
        redirect_to "root_path#contactar", notice: 'Ei' 
    else
    	redirect_to "root_path#contactar", alert: 'Cuidado' 
  	end


  	#ApplicationMailer.emailContacto(@email).deliver

  	#flash[:notice] = "Bingo"

  	#redirect_to "root_path#contactar"
  end

  private
  def email_params
    params.require(:email).permit(:nombre, :telefono,:mensaje)
  end
end
