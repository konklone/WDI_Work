class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # CSRF - "Cross Site Request Form"
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
