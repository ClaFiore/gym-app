class WorkoutsController < ApplicationController
    before_action :find_workout, only: [:show, :edit, :update, :destroy]

    def home
        render :homepage
    end

    def index
        @workouts = Workout.all
    end

    def show
    end

    def edit
    end

    def update
        @workout.update(workout_params)
        redirect_to workout_path(@workout)
    end

    def new
        @workout = Workout.new
    end

    def create
        @workout = Workout.create(workout_params)
        redirect_to workout_path(@workout)
    end

    def destroy
        @workout.destroy
        redirect_to workouts_path
    end


    private

    def find_workout
        @workout = Workout.find(params[:id])
    end

    def workout_params
        params.require(:workout).permit(:name, :day, :time, :member_id, :trainer_id)
    end
end
