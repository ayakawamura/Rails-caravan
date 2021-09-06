Rails.application.routes.draw do
  # get 'blogs/index'
  # get 'blogs/show'
  # get 'blogs/new'
  # get 'blogs/edit'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #↓上記４行get~にcreate,update,destroyを追加したものを１文で設定できる
  resources:blogs
end
