class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: 'Cocktail was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path, notice: 'cocktail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cocktail_params
      params.require(:cocktail).permit(:name, :photo)
    end
end


#   def new
#   end

#   def edit
#   end

#   def create
#     @cocktail = cocktail.new(cocktail_params)

#     if @cocktail.save
#       redirect_to @cocktail, notice: 'cocktail was successfully created.'
#     else
#       render :new
#     end
#   end

#   # PATCH/PUT /cocktails/1
#   def update
#     if @cocktail.update(cocktail_params)
#       redirect_to @cocktail, notice: 'cocktail was successfully updated.'
#     else
#       render :edit
#     end
#   end

#   # DELETE /cocktails/1
#   def destroy
#     @cocktail.destroy
#     redirect_to cocktails_url, notice: 'cocktail was successfully destroyed.'
#   end

# end
