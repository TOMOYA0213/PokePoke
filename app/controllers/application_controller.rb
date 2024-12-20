class ApplicationController < ActionController::Base
  #before_action :authenticate_user!
  # Deviseのヘルパーメソッドをビューで使えるようにする
  #helper_method :current_user, :user_signed_in?


  protect_from_forgery with: :exception

  def hello
    render html: "hello, world!"
  end
end