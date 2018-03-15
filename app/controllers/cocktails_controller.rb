class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cockail = Cocktail.new
  end

  def create
    @cockail = Cocktail.new(cocktail_params)
    if @cockail.save
      redirect_to cocktails_path(@cocktail)
    else
      render :new
    end
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktails_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredient, :dose)
  end
end
