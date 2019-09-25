Rails.application.routes.draw do
  scope module: 'sample_engine' do
    namespace :api do
      namespace :v2 do
        namespace :public do
          resources :polls, only: [:index, :show]
        end
        namespace :private do
          resources :polls, only: [:index]
          resources :votes, only: [:create]
        end
        namespace :admin do
          resources :polls
        end
      end
    end
  end
end
