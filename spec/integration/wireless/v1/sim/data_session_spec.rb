##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'DataSession' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.wireless.v1.sims('DEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                         .data_sessions.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://wireless.twilio.com/v1/Sims/DEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/DataSessions',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "data_sessions": [
              {
                  "sid": "WNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sim_sid": "DEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "radio_link": "LTE",
                  "operator_mcc": "",
                  "operator_mnc": "",
                  "operator_country": "",
                  "operator_name": "",
                  "cell_id": "",
                  "cell_location_estimate": {},
                  "packets_uploaded": 0,
                  "packets_downloaded": 0,
                  "last_updated": "2015-07-30T20:00:00Z",
                  "start": "2015-07-30T20:00:00Z",
                  "end": null
              },
              {
                  "sid": "WNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sim_sid": "DEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "radio_link": "3G",
                  "operator_mcc": "",
                  "operator_mnc": "",
                  "operator_country": "",
                  "operator_name": "",
                  "cell_id": "",
                  "cell_location_estimate": {},
                  "packets_uploaded": 0,
                  "packets_downloaded": 0,
                  "last_updated": "2015-07-30T20:00:00Z",
                  "start": "2015-07-30T20:00:00Z",
                  "end": "2015-07-30T20:00:00Z"
              }
          ],
          "meta": {
              "first_page_url": "https://wireless.twilio.com/v1/Sims/DEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/DataSessions?PageSize=50&Page=0",
              "key": "data_sessions",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://wireless.twilio.com/v1/Sims/DEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/DataSessions?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.wireless.v1.sims('DEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                .data_sessions.list()

    expect(actual).to_not eq(nil)
  end
end