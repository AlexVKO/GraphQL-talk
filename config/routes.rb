Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  constraints default: { format: :json } do
    namespace :web, path: '/', constraints: { subdomain: 'web' } do
      scope module: :v1, constraints: ApiConstraints.new(version:1, default: true) do
        resources :users, only: :index
      end
    end

    namespace :mobile, path: '/', constraints: { subdomain: 'mobile' } do
      scope module: :v1, constraints: ApiConstraints.new(version:1, default: true) do
        resources :users, only: :index
      end
    end

    namespace :admin, path: '/', constraints: { subdomain: 'admin' } do
      scope module: :v1, constraints: ApiConstraints.new(version:1, default: true) do
        resources :users, only: :index
      end
    end
  end

end
