require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { base_finish: @task.base_finish, base_start: @task.base_start, pct_time: @task.pct_time, person_id: @task.person_id, proj_finish: @task.proj_finish, proj_start: @task.proj_start, project_id: @task.project_id, task_deps: @task.task_deps, task_name: @task.task_name, task_notes: @task.task_notes, task_num: @task.task_num, task_status: @task.task_status }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { base_finish: @task.base_finish, base_start: @task.base_start, pct_time: @task.pct_time, person_id: @task.person_id, proj_finish: @task.proj_finish, proj_start: @task.proj_start, project_id: @task.project_id, task_deps: @task.task_deps, task_name: @task.task_name, task_notes: @task.task_notes, task_num: @task.task_num, task_status: @task.task_status }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
