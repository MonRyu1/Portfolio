Rails.application.routes.draw do

  root to: 'public/top#top'

  get 'users' => 'public/top#top'
  get 'admin' => 'admin/top#top'
  get 'about' => 'about#about'
  get "users/confirm" => "public/users#confirm"

  scope module: :public do
    resources :users, :reports, :forecasts, :shops, :spots, :areas
  end

  namespace :admin do
    resources :users, :reports, :forecasts, :shops, :spots, :areas
  end


  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
