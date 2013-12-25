class HomeController < ApplicationController
  def index
    @comics = Comic.all
  end
end
