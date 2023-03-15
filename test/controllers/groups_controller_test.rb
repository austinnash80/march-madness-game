require "test_helper"

class GroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get groups_url
    assert_response :success
  end

  test "should get new" do
    get new_group_url
    assert_response :success
  end

  test "should create group" do
    assert_difference("Group.count") do
      post groups_url, params: { group: { auto_draft_complete: @group.auto_draft_complete, auto_draft_start: @group.auto_draft_start, draft_order_1: @group.draft_order_1, draft_order_2: @group.draft_order_2, draft_order_3: @group.draft_order_3, draft_order_4: @group.draft_order_4, live_draft_complete: @group.live_draft_complete, live_draft_start: @group.live_draft_start, name: @group.name, note_1: @group.note_1 } }
    end

    assert_redirected_to group_url(Group.last)
  end

  test "should show group" do
    get group_url(@group)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_url(@group)
    assert_response :success
  end

  test "should update group" do
    patch group_url(@group), params: { group: { auto_draft_complete: @group.auto_draft_complete, auto_draft_start: @group.auto_draft_start, draft_order_1: @group.draft_order_1, draft_order_2: @group.draft_order_2, draft_order_3: @group.draft_order_3, draft_order_4: @group.draft_order_4, live_draft_complete: @group.live_draft_complete, live_draft_start: @group.live_draft_start, name: @group.name, note_1: @group.note_1 } }
    assert_redirected_to group_url(@group)
  end

  test "should destroy group" do
    assert_difference("Group.count", -1) do
      delete group_url(@group)
    end

    assert_redirected_to groups_url
  end
end
