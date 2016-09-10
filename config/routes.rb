Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  constraints default: { format: :json } do
    namespace :web, path: '/', constraints: { subdomain: 'web' } do
      # our web end points here :)
    end

    namespace :mobile, path: '/', constraints: { subdomain: 'mobile' } do
      # our mobile end points here :)
    end

    namespace :admin, path: '/', constraints: { subdomain: 'admin' } do
      # our admin end points here :)
    end
  end

end
