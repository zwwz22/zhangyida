Zhangyida::Application.routes.draw do
  root :to => 'homes#index'
  resources :homes
  resources :articles

  namespace 'rou' do

    root :to => 'articles#index'

    resources :homes

    resources :users do
      post :get_arr,:on => :collection
      get :login, :on => :collection
      post :login, :on => :collection
      get :log_out, :on => :collection
    end

    resources :articles

    resources :categories
  end
end
