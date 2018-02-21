# create_table "tasks", force: :cascade do |t|
#     t.string "title"
#     t.text "details"
#     t.boolean "completed", default: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end


class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def complete
    @task = Task.find(params[:id])
    @task.update(completed: true)
  # Task.where(id: params[:task_id]).update_all(complete: true)

    redirect_to task_path(@task)
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
     @task = Task.find(params[:id])
     @task.update(task_params)
     redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
