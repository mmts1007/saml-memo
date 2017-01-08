Rails.application.routes.draw do
  get  'saml/index'
  get  'saml/sso'
  post 'saml/acs'
  get  'saml/metadata'
  get  'saml/logout'

  root 'saml#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
