Rails.application.routes.draw do
  get 'applicants/index'
  get 'applicants/new'
  get 'positions/index'
  get 'positions/new'
  get 'positions/edit'
  get 'positions/show'
  get 'positions/create'
  get 'positions/update'
  get 'companies/new'
  get 'companies/edit'
  get 'companies/creat'
  get 'companies/update'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end