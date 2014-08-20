class PagesController < ApplicationController

  def index
    @title = "chomment"

  end

  def display_url
    @title = "chomment"
    @url = "#{params[:display]}".gsub("www.", "").gsub("http://", "").gsub("https://", "")
    @comments = Comment.where(:url => @url)
  end


end
