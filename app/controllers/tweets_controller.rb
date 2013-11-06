class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('id DESC') # This instance variable will be available in the view.
    @tweet = Tweet.new # This is for the form_for builder
  end # Automatically load the app/views/tweets/index.html.erb

  def create
    @tweet = Tweet.new(params[:tweet])
    if @tweet.save # Do we pass validation?
      redirect_to :action => :index
    else
      @tweets = Tweet.order('id DESC')
      render :action => :index
    end
  end
end
