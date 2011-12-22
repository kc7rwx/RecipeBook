class BatchesController < ApplicationController
  before_filter :load_recipe
  
  def create
    @batch = @recipe.batches.new(params[:batch])
    if @recipe.save
      redirect_to @recipe, :notice => 'Added batch'
    else
      redirect_to @recipe, :alert => 'Unable to add batch'
    end
  end
  
  def destroy 
    @batch = @recipe.batches.find(params[:id])
    @batch.destroy
    redirect_to @recipe, :notice => 'Batch deleted'
  end
  
  private
    def load_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end
end
