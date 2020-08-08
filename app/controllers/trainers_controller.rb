class TrainersController < ApplicationController
    before_action :find_trainer, only: [:show, :edit, :update, :destroy]

    def index
        @trainers = Trainer.all
    end

    def show
    end

    def edit
    end

    def update
        @trainer.update(trainer_params)
        redirect_to trainer_path(@trainer)
    end

    def new
        @trainer = Trainer.new
    end

    def create
        @trainer = Trainer.create(trainer_params)
        redirect_to trainer_path(@trainer)
    end

    def destroy
        @trainer.destroy
        redirect_to trainers_path
    end


    private

    def find_trainer
        @trainer = Trainer.find(params[:id])
    end

    def trainer_params
        params.require(:trainer).permit(:name, :specialty)
    end
end
