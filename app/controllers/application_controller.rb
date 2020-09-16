class ApplicationController < ActionController::API
  include JSONAPI::ActsAsResourceController
  
  # Prevent CSRF attacks by raising an exception.
  # protect_from_forgery with: :null_session
  
  acts_as_token_authentication_handler_for User
end
