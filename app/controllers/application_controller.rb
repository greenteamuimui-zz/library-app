class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # the line below is a security precautions for
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
end
