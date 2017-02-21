class PalvarezController < ApplicationController
  def inicio
  	@email = Email.new
  end

  def enviaMail

  	
  	@email=Email.new(email_params)
  	

  	 ApplicationMailer.emailContacto(@email).deliver_now
     flash[:notice] = "Se ha enviado el mensaje, en breve tendrás noticias nuestras."
  	 redirect_to root_path + "#contactar"
     


     #redirect_to admin_customer_rewards_path(tab: "rewards") + "#rewards"
     #respond_to do |format|
  	#	format.js {render inline: "location.reload();" }
	#end


  	#ApplicationMailer.emailContacto(@email).deliver

  	#flash[:notice] = "Bingo"

  	#redirect_to "root_path#contactar"
  end

  private
  def email_params
    params.require(:email).permit(:nombre, :telefono,:mensaje)
  end
end
