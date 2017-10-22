require 'test_helper'

class KadaisControllerTest < ActionController::TestCase
  setup do
    @kadai = kadais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kadais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kadai" do
    assert_difference('Kadai.count') do
      post :create, kadai: { actual_hour: @kadai.actual_hour, category: @kadai.category, do_person: @kadai.do_person, due_date: @kadai.due_date, end_date: @kadai.end_date, goal: @kadai.goal, level: @kadai.level, plan_hour: @kadai.plan_hour, status: @kadai.status, subject: @kadai.subject, vote_date: @kadai.vote_date, vote_person: @kadai.vote_person }
    end

    assert_redirected_to kadai_path(assigns(:kadai))
  end

  test "should show kadai" do
    get :show, id: @kadai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kadai
    assert_response :success
  end

  test "should update kadai" do
    patch :update, id: @kadai, kadai: { actual_hour: @kadai.actual_hour, category: @kadai.category, do_person: @kadai.do_person, due_date: @kadai.due_date, end_date: @kadai.end_date, goal: @kadai.goal, level: @kadai.level, plan_hour: @kadai.plan_hour, status: @kadai.status, subject: @kadai.subject, vote_date: @kadai.vote_date, vote_person: @kadai.vote_person }
    assert_redirected_to kadai_path(assigns(:kadai))
  end

  test "should destroy kadai" do
    assert_difference('Kadai.count', -1) do
      delete :destroy, id: @kadai
    end

    assert_redirected_to kadais_path
  end
end
