##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'GoodData' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.good_data().create(token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Accounts/GoodData',
        headers: headers,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "session_expiry": "2022-09-27T09:28:01Z",
          "workspace_id": "clbi1eelh1x8z4.......ijpnyu",
          "session_id": "-----BEGIN PGP MESSAGE-----\n\nwcBMA11tX1FL13rp\u2026\u2026kHXd\n=vOBk\n-----END PGP MESSAGE-----\n",
          "url": "https://flex-api.twilio.com/v1/Accounts/GoodData"
      }
      ]
    ))

    actual = @client.flex_api.v1.good_data().create()

    expect(actual).to_not eq(nil)
  end
end