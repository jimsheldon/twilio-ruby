##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'WorkspaceCumulativeStatistics' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .cumulative_statistics().fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/CumulativeStatistics',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "reservations_accepted": 100,
          "tasks_completed": 100,
          "start_time": "2015-07-30T20:00:00Z",
          "reservations_rescinded": 100,
          "tasks_timed_out_in_workflow": 100,
          "end_time": "2015-07-30T20:00:00Z",
          "avg_task_acceptance_time": 100,
          "tasks_canceled": 100,
          "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/CumulativeStatistics",
          "tasks_moved": 100,
          "tasks_deleted": 100,
          "tasks_created": 100,
          "reservations_canceled": 100,
          "reservations_timed_out": 100,
          "wait_duration_until_canceled": {
              "avg": 0,
              "min": 0,
              "max": 0,
              "total": 0
          },
          "wait_duration_until_accepted": {
              "avg": 0,
              "min": 0,
              "max": 0,
              "total": 0
          },
          "split_by_wait_time": {
              "5": {
                  "above": {
                      "tasks_canceled": 0,
                      "reservations_accepted": 0
                  },
                  "below": {
                      "tasks_canceled": 0,
                      "reservations_accepted": 0
                  }
              },
              "10": {
                  "above": {
                      "tasks_canceled": 0,
                      "reservations_accepted": 0
                  },
                  "below": {
                      "tasks_canceled": 0,
                      "reservations_accepted": 0
                  }
              }
          },
          "reservations_created": 100,
          "reservations_rejected": 100,
          "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .cumulative_statistics().fetch()

    expect(actual).to_not eq(nil)
  end
end