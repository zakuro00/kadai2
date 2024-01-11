Rails.application.routes.draw do
  get 'books/:id' => 'books#show' ,as: 'book_show'
  get 'books/new'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit' , as: 'edit_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  #root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
