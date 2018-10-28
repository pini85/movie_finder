class ImbdSearchesController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @imbd_searches = current_user.Imbdsearches.all
  end

  def show
  end

  def new
    @imbd_search = ImbdSearch.new
  end

  def create
    @imbd_search = ImbdSearch.new(imbd_params)
    if @imbd_search.save
      redirect_to @imbd_searches, notice: "Congratulations"
      else
        render :new
    end
  end

  def title
    @title = Imbd.title
  end

  private

  def imbd_params
    params.require(:imbd_search).permit(:genre)
  end
end
