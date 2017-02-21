Rails.application.routes.draw do
  get 'palvarez/index'
  
 

  #get 'palvarez/enviaMail'
  #post 'palvarez/enviaMail'
  
  root  'palvarez#inicio'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   match "/enviaMail" => "palvarez#enviaMail", via: [:get, :post]
end
