require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { campus_resident: @member.campus_resident, email: @member.email, fees_paid: @member.fees_paid, interests: @member.interests, major: @member.major, name: @member.name, phone: @member.phone, position_id: @member.position_id, recruiter_id: @member.recruiter_id, referrer: @member.referrer, volunteer: @member.volunteer }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { campus_resident: @member.campus_resident, email: @member.email, fees_paid: @member.fees_paid, interests: @member.interests, major: @member.major, name: @member.name, phone: @member.phone, position_id: @member.position_id, recruiter_id: @member.recruiter_id, referrer: @member.referrer, volunteer: @member.volunteer }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
