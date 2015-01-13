class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # get_project defined at end of file and takes project_id defined by routing and converts it to @project object
  before_filter :get_project

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = @project.tasks.find(:all, :order => 'project_name asc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { redner json: @tasks }
    end

  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = @project.tasks.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { redner json: @task }
    end

  end

  # GET /tasks/1/proj_team
  def task_team
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @project = Project.find(params[:project_id])
    @task = @project.tasks.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { redner json: @task }
    end
 
  end

  # GET /tasks/1/edit
  def edit
    @task = @project.tasks.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = @project.tasks.create!(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to project_url(@project), notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    @task = @project.tasks.find(params[:id])
    #@task = @project.tasks.update!(task_params)

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to project_url(@task), notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = @project.tasks.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to (project_sessions_path(@project)), notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

  def get_project
    @project = Project.find(params[:project_id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:project_id, :task_num, :task_name, :person_id, :pct_time, :base_start, :base_finish, :proj_start, :proj_finish, :task_deps, :task_status, :task_notes)
    end
end
