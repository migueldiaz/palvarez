class ApplicationMailer < ActionMailer::Base
  default from: 'info@pasteleriaalvarez.com'

  self.smtp_settings = {
	:address => "smtp.gmail.com", :port => 587,
	:domain => "gmail.com",
	:authentication => "plain",
	:user_name => "migueldiazgajete@gmail.com",
	:password => "",
	:enable_starttls_auto => true
}

  def emailContacto(email)
  	@email=email

  	@destino='info@pasteleriaalvarez.com'

  	mail(to: @destino,subject: "Formulario Web: "+@email.nombre)

  end
end
