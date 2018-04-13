##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'Transcription' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .transcriptions('TRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Recordings/REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Transcriptions/TRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2008-08-01",
          "date_created": "Mon, 22 Aug 2011 20:58:44 +0000",
          "date_updated": "Mon, 22 Aug 2011 20:58:44 +0000",
          "duration": "10",
          "price": "0.00000",
          "price_unit": "USD",
          "recording_sid": "REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "in-progress",
          "transcription_text": "THIS IS A TEST",
          "type": "fast",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Transcriptions/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .transcriptions('TRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .transcriptions('TRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Recordings/REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Transcriptions/TRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .transcriptions('TRXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .transcriptions.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Recordings/REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Transcriptions.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Transcriptions.json?PageSize=50&Page=0",
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Transcriptions.json?PageSize=50&Page=0",
          "next_page_uri": null,
          "num_pages": 1,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "total": 1,
          "transcriptions": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "api_version": "2008-08-01",
                  "date_created": "Mon, 22 Aug 2011 20:58:44 +0000",
                  "date_updated": "Mon, 22 Aug 2011 20:58:44 +0000",
                  "duration": "10",
                  "price": "0.00000",
                  "price_unit": "USD",
                  "recording_sid": "REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "status": "in-progress",
                  "transcription_text": "THIS IS A TEST",
                  "type": "fast",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Transcriptions/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
              }
          ],
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Transcriptions.json?PageSize=50&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .transcriptions.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Transcriptions.json?PageSize=50&Page=0",
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Transcriptions.json?PageSize=50&Page=0",
          "next_page_uri": null,
          "num_pages": 1,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "total": 1,
          "transcriptions": [],
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Transcriptions.json?PageSize=50&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .recordings('REXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .transcriptions.list()

    expect(actual).to_not eq(nil)
  end
end