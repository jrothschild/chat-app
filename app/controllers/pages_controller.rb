class PagesController < ApplicationController

  def index
    @title = "babylchat"
  end

  def display_url
    @title = "babylchat"
    @url = "http://#{params[:display]}"
  end


end
