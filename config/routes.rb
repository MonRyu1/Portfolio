Rails.application.routes.draw do

  root to: 'public/top#top'

  get 'users' => 'public/top#top'
  get 'admin' => 'admin/top#top'
  get 'about' => 'about#about'
  get "users/confirm" => "public/users#confirm"
  get "locals/confirm" => "public/locals#confirm"
  put "/users/:id/leave" => "public/users#leave", as: 'users_leave'
  put "/locals/:id/leave" => "public/locals#leave", as: 'locals_leave'

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

  devise_for :locals, controllers: {
  sessions:      'locals/sessions',
  passwords:     'locals/passwords',
  registrations: 'locals/registrations'
}

  scope module: :public do
    resources :users, :reports, :forecasts, :shops, :spots, :areas, :locals
  end

  namespace :admin do
    resources :users, :reports, :forecasts, :shops, :spots, :areas, :locals
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
