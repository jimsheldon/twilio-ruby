##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'Engagement' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.studio.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                            .engagements.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/Studio/Flows/FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Engagements',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "previous_page_url": null,
              "next_page_url": null,
              "url": "https://preview.twilio.com/Studio/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Engagements?PageSize=50&Page=0",
              "page": 0,
              "first_page_url": "https://preview.twilio.com/Studio/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Engagements?PageSize=50&Page=0",
              "page_size": 50,
              "key": "engagements"
          },
          "engagements": []
      }
      ]
    ))

    actual = @client.preview.studio.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                   .engagements.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.studio.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                            .engagements('FNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/Studio/Flows/FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Engagements/FNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "flow_sid": "FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "contact_sid": "FCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "contact_channel_address": "+14155555555",
          "status": "ended",
          "context": {},
          "date_created": "2017-11-06T12:00:00Z",
          "date_updated": null,
          "url": "https://preview.twilio.com/Studio/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Engagements/FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "steps": "https://preview.twilio.com/Studio/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Engagements/FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Steps"
          }
      }
      ]
    ))

    actual = @client.preview.studio.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                   .engagements('FNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.studio.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                            .engagements.create(to: '+15558675310', from: '+15017122661')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'To' => '+15558675310', 'From' => '+15017122661', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/Studio/Flows/FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Engagements',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "url": "https://preview.twilio.com/Studio/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Engagements/FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "flow_sid": "FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "context": {
              "flow": {
                  "first_name": "Foo"
              }
          },
          "contact_sid": "FCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "contact_channel_address": "+18001234567",
          "status": "active",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "links": {
              "steps": "https://preview.twilio.com/Studio/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Engagements/FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Steps"
          }
      }
      ]
    ))

    actual = @client.preview.studio.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                   .engagements.create(to: '+15558675310', from: '+15017122661')

    expect(actual).to_not eq(nil)
  end
end