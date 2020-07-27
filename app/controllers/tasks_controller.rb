class TasksController < ApplicationController

    def new
    end

    def create
        @task = Task.new(params.require(:task).permit(:description, :status))
        @task.save
        redirect_to root_path
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
        @task.update(params.require(:task).permit(:description, :status))
        redirect_to root_path
    end

    def destroy
        task = Task.find(params[:id]) #nao precisamos de @ pois nao temos view que usara esse objeto
        task.destroy #destroi a tarefa encontrada
        redirect_to root_path
    end
    
end