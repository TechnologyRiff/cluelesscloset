class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  Rails.application.routes.draw do
    get "welcome/about"
    get "welcome/contact"

    root to: 'welcome#index'
  end
end
