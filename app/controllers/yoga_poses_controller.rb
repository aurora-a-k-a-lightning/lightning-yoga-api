class YogaPosesController < ApplicationController
  before_action :set_yoga_pose, only: [:show, :update, :destroy]

  # GET /yoga_poses
  def index
    filter = params.slice(
        :yoga_category_id,
        :yoga_category_name,
        :yoga_category_short_name,
        :sanskrit_name,
        :english_name
    )

    @yoga_poses = YogaPose.all.joins(:yoga_categories).filter(filter).distinct.sort

    render json: {items: @yoga_poses.as_json(include: [:yoga_categories])}
  end

  # GET /yoga_poses/1
  def show
    render json: @yoga_pose.as_json(include: [:yoga_categories])
  end

  # POST /yoga_poses
  def create
    @yoga_pose = YogaPose.new(yoga_pose_params)

    if @yoga_pose.save
      render json: @yoga_pose.as_json(include: [:yoga_categories]), status: :created, location: @yoga_pose
    else
      render json: @yoga_pose.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yoga_poses/1
  def update
    if @yoga_pose.update(yoga_pose_params)
      render json: @yoga_pose.as_json(include: [:yoga_categories])
    else
      render json: @yoga_pose.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yoga_poses/1
  def destroy
    @yoga_pose.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yoga_pose
      @yoga_pose = YogaPose.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def yoga_pose_params
      params.require(:yoga_pose).permit(:sanskirt_name, :english_name, :img_url, :category_id)
    end
end
