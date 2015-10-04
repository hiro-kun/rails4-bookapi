Rails.application.routes.draw do
  namespace :api, defaults: {format: :json}do
    scope :v1 do
      resources :test
      resources :books
    end
  end
end
