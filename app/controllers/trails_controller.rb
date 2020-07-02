class TrailsController < ApplicationController
  def index
    trails = Trail.all
    render json: { trails: trails }
  end

  def create
    trail = Trail.new(trail_params)
    if trail.save
      render json: {}, status: :created
    else
      render json: {errors: trail.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    trail = Trail.find(params[:id])
    if trail.update(trail_params)
      render json: {}, status: :no_content
    else
      render json: {errors: trail.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    trail = Trail.find(params[:id])
    trail.delete
    render json: {}, status: :no_content
  end
  private

  def trail_params
    params.require(:trail).permit(:name,:distance,:difficulty,:location)
  end
end
