class ApplicationMailer < ActionMailer::Base
  default from: 'info@pasteleriaalvarez.com'

  def emailContacto(email)
  	@email=email

  	@destino='info@pasteleriaalvarez.com'

  	mail(to: @destino,subject: "Formulario Web: "+@email.nombre)

  end
end
