require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { creatorInvCode: @event.creatorInvCode, description: @event.description, endDate: @event.endDate, endTime: @event.endTime, everyone: @event.everyone, family: @event.family, friends: @event.friends, name: @event.name, personal: @event.personal, private: @event.private, school: @event.school, startDate: @event.startDate, startTime: @event.startTime, work: @event.work }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { creatorInvCode: @event.creatorInvCode, description: @event.description, endDate: @event.endDate, endTime: @event.endTime, everyone: @event.everyone, family: @event.family, friends: @event.friends, name: @event.name, personal: @event.personal, private: @event.private, school: @event.school, startDate: @event.startDate, startTime: @event.startTime, work: @event.work }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
