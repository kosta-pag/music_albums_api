class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :update, :destroy]

  def index
    @albums = Album.all
    render json: @albums.as_json(methods: :url)
  end

  def show
    render json: @album.as_json(methods: :url)
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      render json: @album.as_json(methods: :url), status: :created, location: album_url(@album, format: :json)
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  def update
    if @album.update(album_params)
      render json: @album.as_json(methods: :url)
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @album.destroy
    head :no_content
  end

  private

  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.permit(:title, :artist, :released_in)
  end
end
