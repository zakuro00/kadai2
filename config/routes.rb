Rails.application.routes.draw do
  #get 'books/:id' => 'books#show' ,as: 'book'
  #get 'books/new'
  #get 'books' => 'books#index'  ,as: 'books'
  #post 'books' => 'books#create'
  #get 'books/:id/edit' => 'books#edit' , as: 'edit_book'
  #delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  #patch 'books/:id' => 'books#update', as: 'update_book'
  resources :books
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
