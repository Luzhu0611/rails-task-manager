class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new         # GET /tasks/new
    @task = Task.new
  end

  def create     # POST /restaurants
     @task = Task.new(task_params)
     @task.save
  end

  def edit          # GET /restaurants/:id/edit
     @task = Task.find(params[:id])
  end

  def update        # PATCH /restaurants/:id
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  def destroy       # DELETE /restaurants/:id
    @task = Task.find(params[:id])
    @task.destroy

  end

   private

   def task_params
     params.require(:task).permit(:title, :details, :completed)
   end

end
