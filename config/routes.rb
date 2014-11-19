Rails.application.routes.draw do

  root to: "pages#homepage"
  post "/api/request-invite" => "pages#request_invite"

end
