Rails.application.routes.draw do
get "/baseballs/:id" => "baseballs#show"
get "/baseballs" => "baseballs#index"
post "/baseballs" => "baseballs#create"
end
