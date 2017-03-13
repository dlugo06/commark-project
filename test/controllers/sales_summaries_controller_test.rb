require 'test_helper'

class SalesSummariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sales_summary = sales_summaries(:one)
  end

  test "should get index" do
    get sales_summaries_url
    assert_response :success
  end

  test "should get new" do
    get new_sales_summary_url
    assert_response :success
  end

  test "should create sales_summary" do
    assert_difference('SalesSummary.count') do
      post sales_summaries_url, params: { sales_summary: { date: @sales_summary.date, sales_volume: @sales_summary.sales_volume, tasters: @sales_summary.tasters } }
    end

    assert_redirected_to sales_summary_url(SalesSummary.last)
  end

  test "should show sales_summary" do
    get sales_summary_url(@sales_summary)
    assert_response :success
  end

  test "should get edit" do
    get edit_sales_summary_url(@sales_summary)
    assert_response :success
  end

  test "should update sales_summary" do
    patch sales_summary_url(@sales_summary), params: { sales_summary: { date: @sales_summary.date, sales_volume: @sales_summary.sales_volume, tasters: @sales_summary.tasters } }
    assert_redirected_to sales_summary_url(@sales_summary)
  end

  test "should destroy sales_summary" do
    assert_difference('SalesSummary.count', -1) do
      delete sales_summary_url(@sales_summary)
    end

    assert_redirected_to sales_summaries_url
  end
end
