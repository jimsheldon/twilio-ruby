##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Studio < Domain
      class V1 < Version
        class FlowContext < InstanceContext
          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class EngagementList < ListResource
            ##
            # Initialize the EngagementList
            # @param [Version] version Version that contains the resource
            # @param [String] flow_sid The flow_sid
            # @return [EngagementList] EngagementList
            def initialize(version, flow_sid: nil)
              super(version)

              # Path Solution
              @solution = {flow_sid: flow_sid}
              @uri = "/Flows/#{@solution[:flow_sid]}/Engagements"
            end

            ##
            # Lists EngagementInstance records from the API as a list.
            # Unlike stream(), this operation is eager and will load `limit` records into
            # memory before returning.
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit.  Default is no limit
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records.  If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Array] Array of up to limit results
            def list(limit: nil, page_size: nil)
              self.stream(limit: limit, page_size: page_size).entries
            end

            ##
            # Streams EngagementInstance records from the API as an Enumerable.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit. Default is no limit.
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records. If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Enumerable] Enumerable that will yield up to limit results
            def stream(limit: nil, page_size: nil)
              limits = @version.read_limits(limit, page_size)

              page = self.page(page_size: limits[:page_size], )

              @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
            end

            ##
            # When passed a block, yields EngagementInstance records from the API.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            def each
              limits = @version.read_limits

              page = self.page(page_size: limits[:page_size], )

              @version.stream(page,
                              limit: limits[:limit],
                              page_limit: limits[:page_limit]).each {|x| yield x}
            end

            ##
            # Retrieve a single page of EngagementInstance records from the API.
            # Request is executed immediately.
            # @param [String] page_token PageToken provided by the API
            # @param [Integer] page_number Page Number, this value is simply for client state
            # @param [Integer] page_size Number of records to return, defaults to 50
            # @return [Page] Page of EngagementInstance
            def page(page_token: :unset, page_number: :unset, page_size: :unset)
              params = Twilio::Values.of({
                  'PageToken' => page_token,
                  'Page' => page_number,
                  'PageSize' => page_size,
              })
              response = @version.page(
                  'GET',
                  @uri,
                  params
              )
              EngagementPage.new(@version, response, @solution)
            end

            ##
            # Retrieve a single page of EngagementInstance records from the API.
            # Request is executed immediately.
            # @param [String] target_url API-generated URL for the requested results page
            # @return [Page] Page of EngagementInstance
            def get_page(target_url)
              response = @version.domain.request(
                  'GET',
                  target_url
              )
              EngagementPage.new(@version, response, @solution)
            end

            ##
            # Retrieve a single page of EngagementInstance records from the API.
            # Request is executed immediately.
            # @param [String] to The to
            # @param [String] from The from
            # @param [Hash] parameters The parameters
            # @return [EngagementInstance] Newly created EngagementInstance
            def create(to: nil, from: nil, parameters: :unset)
              data = Twilio::Values.of({
                  'To' => to,
                  'From' => from,
                  'Parameters' => Twilio.serialize_object(parameters),
              })

              payload = @version.create(
                  'POST',
                  @uri,
                  data: data
              )

              EngagementInstance.new(@version, payload, flow_sid: @solution[:flow_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Studio.V1.EngagementList>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class EngagementPage < Page
            ##
            # Initialize the EngagementPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [EngagementPage] EngagementPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of EngagementInstance
            # @param [Hash] payload Payload response from the API
            # @return [EngagementInstance] EngagementInstance
            def get_instance(payload)
              EngagementInstance.new(@version, payload, flow_sid: @solution[:flow_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Studio.V1.EngagementPage>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class EngagementContext < InstanceContext
            ##
            # Initialize the EngagementContext
            # @param [Version] version Version that contains the resource
            # @param [String] flow_sid The flow_sid
            # @param [String] sid The sid
            # @return [EngagementContext] EngagementContext
            def initialize(version, flow_sid, sid)
              super(version)

              # Path Solution
              @solution = {flow_sid: flow_sid, sid: sid, }
              @uri = "/Flows/#{@solution[:flow_sid]}/Engagements/#{@solution[:sid]}"

              # Dependents
              @steps = nil
              @engagement_context = nil
            end

            ##
            # Fetch a EngagementInstance
            # @return [EngagementInstance] Fetched EngagementInstance
            def fetch
              params = Twilio::Values.of({})

              payload = @version.fetch(
                  'GET',
                  @uri,
                  params,
              )

              EngagementInstance.new(@version, payload, flow_sid: @solution[:flow_sid], sid: @solution[:sid], )
            end

            ##
            # Access the steps
            # @return [StepList]
            # @return [StepContext] if sid was passed.
            def steps(sid=:unset)
              raise ArgumentError, 'sid cannot be nil' if sid.nil?

              if sid != :unset
                return StepContext.new(@version, @solution[:flow_sid], @solution[:sid], sid, )
              end

              unless @steps
                @steps = StepList.new(@version, flow_sid: @solution[:flow_sid], engagement_sid: @solution[:sid], )
              end

              @steps
            end

            ##
            # Access the engagement_context
            # @return [EngagementContextList]
            # @return [EngagementContextContext]
            def engagement_context
              EngagementContextContext.new(@version, @solution[:flow_sid], @solution[:sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Studio.V1.EngagementContext #{context}>"
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class EngagementInstance < InstanceResource
            ##
            # Initialize the EngagementInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] flow_sid The flow_sid
            # @param [String] sid The sid
            # @return [EngagementInstance] EngagementInstance
            def initialize(version, payload, flow_sid: nil, sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'sid' => payload['sid'],
                  'account_sid' => payload['account_sid'],
                  'flow_sid' => payload['flow_sid'],
                  'contact_sid' => payload['contact_sid'],
                  'contact_channel_address' => payload['contact_channel_address'],
                  'context' => payload['context'],
                  'status' => payload['status'],
                  'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                  'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                  'url' => payload['url'],
                  'links' => payload['links'],
              }

              # Context
              @instance_context = nil
              @params = {'flow_sid' => flow_sid, 'sid' => sid || @properties['sid'], }
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [EngagementContext] EngagementContext for this EngagementInstance
            def context
              unless @instance_context
                @instance_context = EngagementContext.new(@version, @params['flow_sid'], @params['sid'], )
              end
              @instance_context
            end

            ##
            # @return [String] The sid
            def sid
              @properties['sid']
            end

            ##
            # @return [String] The account_sid
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [String] The flow_sid
            def flow_sid
              @properties['flow_sid']
            end

            ##
            # @return [String] The contact_sid
            def contact_sid
              @properties['contact_sid']
            end

            ##
            # @return [String] The contact_channel_address
            def contact_channel_address
              @properties['contact_channel_address']
            end

            ##
            # @return [Hash] The context
            def context
              @properties['context']
            end

            ##
            # @return [engagement.Status] The status
            def status
              @properties['status']
            end

            ##
            # @return [Time] The date_created
            def date_created
              @properties['date_created']
            end

            ##
            # @return [Time] The date_updated
            def date_updated
              @properties['date_updated']
            end

            ##
            # @return [String] The url
            def url
              @properties['url']
            end

            ##
            # @return [String] The links
            def links
              @properties['links']
            end

            ##
            # Fetch a EngagementInstance
            # @return [EngagementInstance] Fetched EngagementInstance
            def fetch
              context.fetch
            end

            ##
            # Access the steps
            # @return [steps] steps
            def steps
              context.steps
            end

            ##
            # Access the engagement_context
            # @return [engagement_context] engagement_context
            def engagement_context
              context.engagement_context
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Studio.V1.EngagementInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Studio.V1.EngagementInstance #{values}>"
            end
          end
        end
      end
    end
  end
end