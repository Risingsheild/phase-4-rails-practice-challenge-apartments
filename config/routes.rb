Rails.application.routes.draw do
  recources :lease, only:[:create, :destroy]
  recources :apartments
  recources :tenants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
