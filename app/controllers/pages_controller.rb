class PagesController < ApplicationController

  def index
    @title = "chomment"

  end

  def display_url
    @title = "chomment"
    @url = "http://#{params[:display]}"
    @comment = Comment.where(:url => @url)
  end


end
