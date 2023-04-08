Rails.application.routes.draw do
get "/baseballs/:id" => "baseballs#show"
get "/baseballs" => "baseballs#index"
post "/baseballs" => "baseballs#create"
patch "/baseballs/:id" => "baseballs#update"
delete "/baseballs/:id" => "baseballs#destroy"
end
