class IngredientsController < ApplicationController
  before_filter :load_batch
  
  def show
    @ingredient = @batch.ingredients.find(params[:id])
    respond_to do |format|
      format.html # show.html.haml
    end
  end
  
  def create
    @ingredient = @batch.ingredients.new(params[:batch])
    if @batch.save
      redirect_to @batch, :notice => 'Added ingredient'
    else
      redirect_to @batch, :alert => 'Unable to add ingredient'
    end
  end
  
  def destroy 
    @ingredient = @batch.ingredients.find(params[:id])
    @ingredient.destroy
    redirect_to @batch, :notice => 'Batch deleted'
  end
  
  private
    def load_batch
      @batch = Batch.find(params[:batch_id])
    end
end
