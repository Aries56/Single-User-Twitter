class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('id DESC') # This instance variable will be available in the view.
  end # Automatically load the app/views/tweets/index.html.erb

  def create

  end
end
