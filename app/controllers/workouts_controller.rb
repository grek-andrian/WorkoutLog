class WorkoutsController < ApplicationController
before_action :find_workout, only: [:show, :edit,:update, :destroy]

  def index
    @workouts=Workout.all.order("created_at DESC")
  end

  def show
    #code
  end

  def new
    @workout=Workout.new
  end

  def create
    @workout=Workout.new(workout_params)
    if @workout.save
      redirect_to @workout
    else
    render "new"
  end
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

  private
  def workout_params
    params.require(:workout).permit(:date, :workout, :mood, :length)
  end

  def find_workout
    @workout=Workout.find(params[:id])
  end
end
