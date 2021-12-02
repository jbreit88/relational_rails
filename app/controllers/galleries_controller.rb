class GalleriesController < ApplicationController

  def index
    # @directors = Director.all
    @galleries = Gallerie.all
  end

end
