Rails.application.routes.draw do

  get '/s/:slug', to: 'links#show'

end
