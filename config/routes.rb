Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]

  patch "/bird/:id/likes" => "bird#increment_likes"
end
