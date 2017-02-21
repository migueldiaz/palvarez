class Email
   include ActiveModel::Model

   validates :nombre, :presence => true
   validates :email, :presence => true
   validates :email, :format => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
   validates :mensaje, :presence => true

   attr_accessor :nombre
   attr_accessor :telefono
   attr_accessor :email
   attr_accessor :mensaje	

end 