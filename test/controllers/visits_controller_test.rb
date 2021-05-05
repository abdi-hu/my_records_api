require "test_helper"

class VisitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visit = visits(:one)
  end

  test "should get index" do
    get visits_url, as: :json
    assert_response :success
  end

  test "should create visit" do
    assert_difference('Visit.count') do
      post visits_url, params: { visit: { appoint_date: @visit.appoint_date, appoint_time: @visit.appoint_time, visit_summary: @visit.visit_summary } }, as: :json
    end

    assert_response 201
  end

  test "should show visit" do
    get visit_url(@visit), as: :json
    assert_response :success
  end

  test "should update visit" do
    patch visit_url(@visit), params: { visit: { appoint_date: @visit.appoint_date, appoint_time: @visit.appoint_time, visit_summary: @visit.visit_summary } }, as: :json
    assert_response 200
  end

  test "should destroy visit" do
    assert_difference('Visit.count', -1) do
      delete visit_url(@visit), as: :json
    end

    assert_response 204
  end
end
