class ImmaginesController < ApplicationController
  before_action :set_immagine, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @immagines = Immagine.all
    respond_with(@immagines)
  end

  def show
    respond_with(@immagine)
  end

  def new
    @immagine = Immagine.new
    respond_with(@immagine)
  end

  def edit
  end

  def create
    @immagine = Immagine.new(immagine_params)
    @immagine.save
    respond_with(@immagine)
  end

  def update
    @immagine.update(immagine_params)
    respond_with(@immagine)
  end

  def destroy
    @immagine.destroy
    respond_with(@immagine)
  end

  private
    def set_immagine
      @immagine = Immagine.find(params[:id])
    end

    def immagine_params
      params.require(:immagine).permit(:url, :page_id)
    end
end
