Rails.application.routes.draw do
 
  get "/" => "movies#index"
  post "/movies/" => "movies#show"

  post "/movies/" => "movies#create"
end
