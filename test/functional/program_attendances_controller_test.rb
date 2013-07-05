require 'test_helper'

class ProgramAttendancesControllerTest < ActionController::TestCase
  setup do
    @program_attendance = program_attendances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:program_attendances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program_attendance" do
    assert_difference('ProgramAttendance.count') do
      post :create, program_attendance: { atteneded: @program_attendance.atteneded, client_id: @program_attendance.client_id, program_id: @program_attendance.program_id }
    end

    assert_redirected_to program_attendance_path(assigns(:program_attendance))
  end

  test "should show program_attendance" do
    get :show, id: @program_attendance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program_attendance
    assert_response :success
  end

  test "should update program_attendance" do
    put :update, id: @program_attendance, program_attendance: { atteneded: @program_attendance.atteneded, client_id: @program_attendance.client_id, program_id: @program_attendance.program_id }
    assert_redirected_to program_attendance_path(assigns(:program_attendance))
  end

  test "should destroy program_attendance" do
    assert_difference('ProgramAttendance.count', -1) do
      delete :destroy, id: @program_attendance
    end

    assert_redirected_to program_attendances_path
  end
end
