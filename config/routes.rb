Rails.application.routes.draw do
  get 'books/new'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/show'
  get 'books/edit'
  #root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
