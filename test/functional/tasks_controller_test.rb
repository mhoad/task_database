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
      post :create, task: { doability_score: @task.doability_score, free: @task.free, impact_score: @task.impact_score, name: @task.name, paid: @task.paid, reqruires_developer: @task.reqruires_developer, requires_client: @task.requires_client, risk_score: @task.risk_score, time_taken: @task.time_taken, total_score: @task.total_score }
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
    put :update, id: @task, task: { doability_score: @task.doability_score, free: @task.free, impact_score: @task.impact_score, name: @task.name, paid: @task.paid, reqruires_developer: @task.reqruires_developer, requires_client: @task.requires_client, risk_score: @task.risk_score, time_taken: @task.time_taken, total_score: @task.total_score }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
