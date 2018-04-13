##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'SubscribedTrack' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .participants('PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .subscribed_tracks.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://video.twilio.com/v1/Rooms/RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants/PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/SubscribedTracks',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "subscribed_tracks": [],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SubscribedTracks?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SubscribedTracks?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "subscribed_tracks"
          }
      }
      ]
    ))

    actual = @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .participants('PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .subscribed_tracks.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_filters responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "subscribed_tracks": [
              {
                  "publisher_sid": "PAbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
                  "subscriber_sid": "PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "sid": "MTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "name": "bob-track",
                  "kind": "data",
                  "enabled": true
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SubscribedTracks?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://video.twilio.com/v1/Rooms/RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Participants/PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SubscribedTracks?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "subscribed_tracks"
          }
      }
      ]
    ))

    actual = @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .participants('PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .subscribed_tracks.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .participants('PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .subscribed_tracks.update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://video.twilio.com/v1/Rooms/RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Participants/PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/SubscribedTracks',
    ))).to eq(true)
  end

  it "receives update_filters responses" do
    @holodeck.mock(Twilio::Response.new(
        202,
      %q[
      {
          "publisher_sid": null,
          "subscriber_sid": "PAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "room_sid": "RMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": null,
          "date_updated": null,
          "sid": null,
          "name": "bob-track",
          "kind": "data",
          "enabled": null
      }
      ]
    ))

    actual = @client.video.v1.rooms('RMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .participants('PAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .subscribed_tracks.update()

    expect(actual).to_not eq(nil)
  end
end