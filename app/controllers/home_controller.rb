# frozen_string_literal: true

class HomeController < ApplicationController
  def top; end

  def about; end

    def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to articles_path, notice: 'ゲストユーザーとしてログインしました。'
  end

end
