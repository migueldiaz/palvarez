Rails.application.routes.draw do
  get 'palvarez/index'
  
  match "/enviaMail" => "palvarez#enviaMail", via: [:get, :post]

  #get 'palvarez/enviaMail'
  #post 'palvarez/enviaMail'
  root  'palvarez#inicio'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
