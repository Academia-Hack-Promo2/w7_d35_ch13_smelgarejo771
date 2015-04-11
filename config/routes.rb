Rails.application.routes.draw do
 get "/mashable" => "feeds#show_mashable"
 get "/reddit" => "feeds#show_reddit"
 get "/digg" => "feeds#show_digg"

end
