class TagsController < ApplicationController
  def index
    @tag = Tag.all
  end
  def new
    @tweet = Tweet.tags.find(params[:tweet_id])
  end

  def create
    @tweet = Tweet.tags.find(params[:tweet_id])
    @tag = @tweet.tags.new(tag_params)
    if @tag.save
      redirect_to root_path
    else
      render :new
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to root_path
  end

private
  def tag_params
    params.require(:tag).permit(:tag)
  end

end
