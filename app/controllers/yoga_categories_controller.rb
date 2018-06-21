class YogaCategoriesController < ApplicationController
  before_action :set_yoga_category, only: [:show, :update, :destroy]

  # GET /yoga_categories
  def index
    @yoga_categories = YogaCategory.all.filter(params.slice(
        :yoga_category_name,
        :yoga_category_short_name,
    ))

    render json: @yoga_categories.as_json(include: [:yoga_poses])
  end

  # GET /yoga_categories/1
  def show
    render json: @yoga_category.as_json(include: [:yoga_poses])
  end

  # POST /yoga_categories
  def create
    @yoga_category = YogaCategory.new(yoga_category_params)

    if @yoga_category.save
      render json: @yoga_category.as_json(include: [:yoga_poses]), status: :created, location: @yoga_category
    else
      render json: @yoga_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yoga_categories/1
  def update
    if @yoga_category.update(yoga_category_params)
      render json: @yoga_category.as_json(include: [:yoga_poses])
    else
      render json: @yoga_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yoga_categories/1
  def destroy
    @yoga_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yoga_category
      @yoga_category = YogaCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def yoga_category_params
      params.require(:yoga_category).permit(:name, :short_name, :description)
    end
end
