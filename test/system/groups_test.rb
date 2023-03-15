require "application_system_test_case"

class GroupsTest < ApplicationSystemTestCase
  setup do
    @group = groups(:one)
  end

  test "visiting the index" do
    visit groups_url
    assert_selector "h1", text: "Groups"
  end

  test "should create group" do
    visit groups_url
    click_on "New group"

    check "Auto draft complete" if @group.auto_draft_complete
    check "Auto draft start" if @group.auto_draft_start
    fill_in "Draft order 1", with: @group.draft_order_1
    fill_in "Draft order 2", with: @group.draft_order_2
    fill_in "Draft order 3", with: @group.draft_order_3
    fill_in "Draft order 4", with: @group.draft_order_4
    check "Live draft complete" if @group.live_draft_complete
    check "Live draft start" if @group.live_draft_start
    fill_in "Name", with: @group.name
    fill_in "Note 1", with: @group.note_1
    click_on "Create Group"

    assert_text "Group was successfully created"
    click_on "Back"
  end

  test "should update Group" do
    visit group_url(@group)
    click_on "Edit this group", match: :first

    check "Auto draft complete" if @group.auto_draft_complete
    check "Auto draft start" if @group.auto_draft_start
    fill_in "Draft order 1", with: @group.draft_order_1
    fill_in "Draft order 2", with: @group.draft_order_2
    fill_in "Draft order 3", with: @group.draft_order_3
    fill_in "Draft order 4", with: @group.draft_order_4
    check "Live draft complete" if @group.live_draft_complete
    check "Live draft start" if @group.live_draft_start
    fill_in "Name", with: @group.name
    fill_in "Note 1", with: @group.note_1
    click_on "Update Group"

    assert_text "Group was successfully updated"
    click_on "Back"
  end

  test "should destroy Group" do
    visit group_url(@group)
    click_on "Destroy this group", match: :first

    assert_text "Group was successfully destroyed"
  end
end
