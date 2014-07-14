Rails.application.routes.draw do
	root to: "extra#index"
	
	resources :users, constraints: { subdomain: '' }
	resources :sessions, constraints: { subdomain: '' }
	
	get 'login' => "sessions#login", as: "users_signin", constraints: { subdomain: 'accounts' }
	get 'register' => "users#register", as: "users_register", constraints: { subdomain: 'accounts' }
	get 'forgot_username' => "users#forgot_username", as: "users_forgot_username", constraints: { subdomain: 'accounts' }
	get 'forgot_password' => "users#forgot_password", as: "users_forgot_password", constraints: { subdomain: 'accounts' }
	
	get 'userlist' => 'users#index', as: 'users_path', constraints: { subdomain: '' }
	get 'newUser' => 'users#new', constraints: { subdomain: '' }
	
	#get '' => 'extra#api', constraints: { subdomain: 'api' }
end
