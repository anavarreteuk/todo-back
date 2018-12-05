Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users
      resources :tasks
      post 'signin', to: 'users#signin'
    end
  end
end
