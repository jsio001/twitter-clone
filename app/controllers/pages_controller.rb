class PagesController < ApplicationController
  def home
    @tweets = current_user.tweets
  end
end
