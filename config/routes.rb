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
 	resources :categories, except: [:show, :new]
 end
#会員側
 resources  :babies do
   resource :excretions, only: [:new, :create, :edit, :update, :destroy]
   resource :body_weights, only: [:new, :create, :edit, :update, :destroy]
   resource :body_temperatures, only: [:new, :create, :edit, :update, :destroy]
   resource :mother_milks, only: [:new, :create, :edit, :update, :destroy]
   resource :milk_powders, only: [:new, :create, :edit, :update, :destroy]
   get 'history', on: :member
 end
   resources :problems,only:  [:index, :new, :show, :create, :destroy]
   resources :comments, only: [:create, :destroy] do
   	resource :likes, only: [:create, :destroy]
   end
 resources :expertises, only: [:index, :show]
 resource :customer, only: [:show, :edit, :update, :destroy]
 resources :select_babies, only: [:index]


 get 'homes/about' => "homes#about"

end