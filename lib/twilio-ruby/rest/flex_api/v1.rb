##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class FlexApi
      class V1 < Version
        ##
        # Initialize the V1 version of FlexApi
        def initialize(domain)
          super
          @version = 'v1'
          @channel = nil
          @configuration = nil
          @flex_flow = nil
          @good_data = nil
          @interaction = nil
          @user_roles = nil
          @web_channel = nil
        end

        ##
        # @param [String] sid The SID of the Flex chat channel resource to fetch.
        # @return [Twilio::REST::Flex_api::V1::ChannelContext] if sid was passed.
        # @return [Twilio::REST::Flex_api::V1::ChannelList]
        def channel(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @channel ||= ChannelList.new self
          else
              ChannelContext.new(self, sid)
          end
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::ConfigurationContext]
        def configuration
          @configuration ||= ConfigurationContext.new self
        end

        ##
        # @param [String] sid The SID of the Flex Flow resource to fetch.
        # @return [Twilio::REST::Flex_api::V1::FlexFlowContext] if sid was passed.
        # @return [Twilio::REST::Flex_api::V1::FlexFlowList]
        def flex_flow(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @flex_flow ||= FlexFlowList.new self
          else
              FlexFlowContext.new(self, sid)
          end
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::GoodDataContext]
        def good_data
          @good_data ||= GoodDataContext.new self
        end

        ##
        # @param [String] sid The SID of the Interaction resource to fetch.
        # @return [Twilio::REST::Flex_api::V1::InteractionContext] if sid was passed.
        # @return [Twilio::REST::Flex_api::V1::InteractionList]
        def interaction(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @interaction ||= InteractionList.new self
          else
              InteractionContext.new(self, sid)
          end
        end

        ##
        # @return [Twilio::REST::Flex_api::V1::UserRolesContext]
        def user_roles
          @user_roles ||= UserRolesContext.new self
        end

        ##
        # @param [String] sid The SID of the WebChannel resource to fetch.
        # @return [Twilio::REST::Flex_api::V1::WebChannelContext] if sid was passed.
        # @return [Twilio::REST::Flex_api::V1::WebChannelList]
        def web_channel(sid=:unset)
          if sid.nil?
              raise ArgumentError, 'sid cannot be nil'
          end
          if sid == :unset
              @web_channel ||= WebChannelList.new self
          else
              WebChannelContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::FlexApi::V1>'
        end
      end
    end
  end
end