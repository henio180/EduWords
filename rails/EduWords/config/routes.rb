EduWords::Application.routes.draw do
  resources :tags

  resources :words

  resources :languages

  resources :tests

  devise_for :members
  root :to =>'home#index'
  get 'dashboard' => 'home#dashboard'
  get "download", to: "words#download", as: 'download'
#devise_for :members,:controllers => { :registrations =>'registration'}
#match 'dashboard' => 'home#dashboard'
end