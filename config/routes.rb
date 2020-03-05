Rails.application.routes.draw do
    devise_for :admin, controllers: {
    sessions:      'admin/sessions',
    passwords:     'admin/passwords',
    registrations: 'admin/registrations'
    }
	devise_for :customers, controllers: {
	sessions:      'customers/sessions',
	passwords:     'customers/passwords',
	registrations: 'customers/registrations'
	}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: "homes#top"

 namespace :admin do
 	resources :comments, only:[:index, :show, :destroy]
 	resources :problems, only:[:index, :show, :destroy]
 	resources :communitys, only:[:index, :show, :destroy]
 	resources :expertises
 	resources :categories, only: [:index, :new, :edit, :create, :update, :destroy]
 end
#会員側
 resources :babys
 resources :excretions, only: [:create, :destroy]
 resources :body_weights, only: [:create, :destroy]
 resources :suckles, only: [:create, :destroy]
 resources :body_temperatures, only: [:create, :destroy]
 resources :problems,only:  [:index, :new, :show, :create, :destroy]
 resources :communitys, only: [:index, :new, :show, :create, :destroy]
 resources :comments, only: [:create, :destroy] do
 	resource :likes, only: [:create, :destroy]
 end
 resources :expertises, only: [:index, :show]
  resource :customer, only: [:show, :edit, :update, :destroy]


 get 'homes/about' => "homes#about"

end
