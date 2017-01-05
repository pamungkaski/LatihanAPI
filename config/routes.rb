Rails.application.routes.draw do
	#require require '#{RAILS.root}/lib/movie.rb'
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
