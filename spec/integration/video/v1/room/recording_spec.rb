##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'RoomRecording' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .recordings('RTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://video.twilio.com/v1/Rooms/RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Recordings/RTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "processing",
          "date_created": "2015-07-30T20:00:00Z",
          "sid": "RTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "source_sid": "MTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "size": 0,
          "type": "audio",
          "duration": 0,
          "container_format": "mka",
          "codec": "OPUS",
          "grouping_sids": {
              "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          },
          "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/RTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "media": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/RTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media"
          }
      }
      ]
    ))

    actual = @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .recordings('RTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .recordings.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://video.twilio.com/v1/Rooms/RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Recordings',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "recordings": [],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "recordings"
          }
      }
      ]
    ))

    actual = @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .recordings.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_results responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "recordings": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "status": "completed",
                  "date_created": "2015-07-30T20:00:00Z",
                  "sid": "RTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "source_sid": "MTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "size": 23,
                  "type": "audio",
                  "duration": 10,
                  "container_format": "mka",
                  "codec": "OPUS",
                  "grouping_sids": {
                      "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                      "participant_sid": "PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                  },
                  "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/RTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "links": {
                      "media": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/RTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media"
                  }
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "recordings"
          }
      }
      ]
    ))

    actual = @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .recordings.list()

    expect(actual).to_not eq(nil)
  end
end