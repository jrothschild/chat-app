class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    
    Pusher[params[:url].gsub("http://", "")].trigger('my_event', {
      :message => params[:message],
      :username => current_user.username
    })

    current_user.comments.create(:body => params[:message], :url => params[:url])
    render :nothing => true
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(params[:comment])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy

  end

end