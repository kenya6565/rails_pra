class ApplicationController < ActionController::Base
  # ここにセッションヘルパーを仕込むことでどこのコントローラーに対しても使えるようになる
  include SessionsHelper
  protect_from_forgery with: :exception
  def hello
    render html: "hello, world!"
  end
end
