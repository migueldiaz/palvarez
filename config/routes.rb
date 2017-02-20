Rails.application.routes.draw do
  get 'palvarez/index'
  get 'palvarez/enviaMail'
  root  'palvarez#inicio'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
