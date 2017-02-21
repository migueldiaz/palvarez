class ApplicationMailer < ActionMailer::Base
  default from: 'info@pasteleriaalvarez.com'

  self.smtp_settings = {
	:address => "mail.gandi.net", :port => 587,
	:domain => "gandi.net",
	:authentication => "plain",
	:user_name => "noresponder@pasteleriaalvarez.com",
	:password => "",
	:enable_starttls_auto => true
}

  def emailContacto(email)
  	
  	@email=email

  	@destino='info@pasteleriaalvarez.com'

  	mail(to: @destino,subject: "Formulario Web: "+@email.nombre)

  end
end
