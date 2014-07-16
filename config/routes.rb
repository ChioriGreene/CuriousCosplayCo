Rails.application.routes.draw do
	root to: "extra#index", constraints: { subdomain: '' }

	resources :users, constraints: { subdomain: :accounts }
	resources :sessions
	resources :articles, constraints: { subdomain: :accounts }

	get 'login' => "sessions#login", as: "users_signin", constraints: { subdomain: 'accounts' }
	get 'register' => "users#register", as: "users_register", constraints: { subdomain: 'accounts' }
	get 'forgot_username' => "users#forgot_username", as: "users_forgot_username", constraints: { subdomain: 'accounts' }
	get 'forgot_password' => "users#forgot_password", as: "users_forgot_password", constraints: { subdomain: 'accounts' }

	get 'dashboard' => 'articles#dashboard', as: "dashboard", constraints: { subdomain: "accounts" }

	get 'ajaxPosts' => 'articles#ajax', as: "ajax_posts", constraints: { subdomain: "api" }

	get 'userlist' => 'users#index', as: 'users_path', constraints: { subdomain: '' }
	get 'newUser' => 'users#new', constraints: { subdomain: '' }

	get 'system-check' => 'extra#systemCheck', constraints: { subdomain: 'api' }

	get '' => 'extra#api', constraints: { subdomain: 'api' }
	get '' => 'extra#forbidden'
end
