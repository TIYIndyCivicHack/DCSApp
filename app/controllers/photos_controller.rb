class PhotosController < ApplicationController
  def create
    @photo = @document.photos.new(photo_params)
  end
end
