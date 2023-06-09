require "test_helper"

class SchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school = schools(:one)
  end

  test "should get index" do
    get schools_url
    assert_response :success
  end

  test "should get new" do
    get new_school_url
    assert_response :success
  end

  test "should create school" do
    assert_difference("School.count") do
      post schools_url, params: { school: { boolean: @school.boolean, name: @school.name, region: @school.region, seed: @school.seed, w1: @school.w1, w2: @school.w2, w3: @school.w3, w4: @school.w4, w5: @school.w5, w6: @school.w6 } }
    end

    assert_redirected_to school_url(School.last)
  end

  test "should show school" do
    get school_url(@school)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_url(@school)
    assert_response :success
  end

  test "should update school" do
    patch school_url(@school), params: { school: { boolean: @school.boolean, name: @school.name, region: @school.region, seed: @school.seed, w1: @school.w1, w2: @school.w2, w3: @school.w3, w4: @school.w4, w5: @school.w5, w6: @school.w6 } }
    assert_redirected_to school_url(@school)
  end

  test "should destroy school" do
    assert_difference("School.count", -1) do
      delete school_url(@school)
    end

    assert_redirected_to schools_url
  end
end
