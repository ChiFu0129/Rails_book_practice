Rails.application.routes.draw do
  get 'books/index'
  get 'books/new'
  get 'books/create'
  get 'books/show'
  resources :books
end
