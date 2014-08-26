class PagesController < ApplicationController

  def index
    @title = "chomment"

  end

  def display_url
    @title = "chomment"
    @url = "#{params[:display]}".gsub("www.", "").gsub("http://", "").gsub("https://", "").downcase
    @comments = Comment.where(:url => @url)
  end

  def iframe
    @url = params[:route] || "http://www.cnn.com"
    puts "TARGET"
    puts @url
    @page = Unirest.get(@url).body
    render layout: false
  end

  def test
    
  end

end
