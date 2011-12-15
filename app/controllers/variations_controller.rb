class VariationsController < ApplicationController
  before_filter :load_recipe
  
  def create
    @variation = @recipe.variations.new(params[:variation])
    if @variation.save
      redirect_to @recipe, :notice => t('variations.created_success')
    else
      redirect_to @recipe, :notice => t('variations.creation_failed')
    end
  end
  
  def destroy
    @variation = @recipe.variations.find(params[:id])
    @variation.destroy
    redirect_to @recipe, :notice => t('variations.deleted')
  end
  
  private
    def load_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end
end
