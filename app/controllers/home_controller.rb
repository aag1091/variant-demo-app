class HomeController < ApplicationController
  def index
    @comics = Comic.all
    respond_to do |format|
      format.json
      format.html               # /app/views/posts/show.html.erb
      format.html.phone         # /app/views/posts/show.html+phone.erb
      format.html.tablet        # /app/views/posts/show.html+tablet.erb
    end
    # we can also define the render method as below
    # respond_to do |format|
    #   format.html do |variant|
    #     variant.tablet
    #     variant.phone
    #     variant.desktop
    #     variant.none
    #   end
    # end
  end
end
