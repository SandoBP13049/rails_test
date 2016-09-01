Rails.application.routes.draw do
  get 'upload/index'
  post  "upload" => "upload#test"
  post 'upload/test'
end
