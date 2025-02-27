##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Trusthub
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#

module Twilio
    module REST
        class Trusthub
            class V1 < Version
                ##
                # Initialize the V1 version of Trusthub
                def initialize(domain)
                    super
                    @version = 'v1'
                    @compliance_inquiries = nil
                    @compliance_tollfree_inquiries = nil
                    @customer_profiles = nil
                    @end_users = nil
                    @end_user_types = nil
                    @policies = nil
                    @supporting_documents = nil
                    @supporting_document_types = nil
                    @trust_products = nil
                end

                ##
                # @param [String] customer_id The unique CustomerId matching the Customer Profile/Compliance Inquiry that should be resumed or resubmitted. This value will have been returned by the initial Compliance Inquiry creation call.
                # @return [Twilio::REST::Trusthub::V1::ComplianceInquiriesContext] if customerId was passed.
                # @return [Twilio::REST::Trusthub::V1::ComplianceInquiriesList]
                def compliance_inquiries(customer_id=:unset)
                    if customer_id.nil?
                        raise ArgumentError, 'customer_id cannot be nil'
                    end
                    if customer_id == :unset
                        @compliance_inquiries ||= ComplianceInquiriesList.new self
                    else
                        ComplianceInquiriesContext.new(self, customer_id)
                    end
                end
                ##
                # @param [String] tollfree_id The unique TolfreeId matching the Compliance Tollfree Verification Inquiry that should be resumed or resubmitted. This value will have been returned by the initial Compliance Tollfree Verification Inquiry creation call.
                # @return [Twilio::REST::Trusthub::V1::ComplianceTollfreeInquiriesContext] if tollfreeId was passed.
                # @return [Twilio::REST::Trusthub::V1::ComplianceTollfreeInquiriesList]
                def compliance_tollfree_inquiries(tollfree_id=:unset)
                    if tollfree_id.nil?
                        raise ArgumentError, 'tollfree_id cannot be nil'
                    end
                    if tollfree_id == :unset
                        @compliance_tollfree_inquiries ||= ComplianceTollfreeInquiriesList.new self
                    else
                        ComplianceTollfreeInquiriesContext.new(self, tollfree_id)
                    end
                end
                ##
                # @param [String] sid The unique string that we created to identify the Customer-Profile resource.
                # @return [Twilio::REST::Trusthub::V1::CustomerProfilesContext] if sid was passed.
                # @return [Twilio::REST::Trusthub::V1::CustomerProfilesList]
                def customer_profiles(sid=:unset)
                    if sid.nil?
                        raise ArgumentError, 'sid cannot be nil'
                    end
                    if sid == :unset
                        @customer_profiles ||= CustomerProfilesList.new self
                    else
                        CustomerProfilesContext.new(self, sid)
                    end
                end
                ##
                # @param [String] sid The unique string created by Twilio to identify the End User resource.
                # @return [Twilio::REST::Trusthub::V1::EndUserContext] if sid was passed.
                # @return [Twilio::REST::Trusthub::V1::EndUserList]
                def end_users(sid=:unset)
                    if sid.nil?
                        raise ArgumentError, 'sid cannot be nil'
                    end
                    if sid == :unset
                        @end_users ||= EndUserList.new self
                    else
                        EndUserContext.new(self, sid)
                    end
                end
                ##
                # @param [String] sid The unique string that identifies the End-User Type resource.
                # @return [Twilio::REST::Trusthub::V1::EndUserTypeContext] if sid was passed.
                # @return [Twilio::REST::Trusthub::V1::EndUserTypeList]
                def end_user_types(sid=:unset)
                    if sid.nil?
                        raise ArgumentError, 'sid cannot be nil'
                    end
                    if sid == :unset
                        @end_user_types ||= EndUserTypeList.new self
                    else
                        EndUserTypeContext.new(self, sid)
                    end
                end
                ##
                # @param [String] sid The unique string that identifies the Policy resource.
                # @return [Twilio::REST::Trusthub::V1::PoliciesContext] if sid was passed.
                # @return [Twilio::REST::Trusthub::V1::PoliciesList]
                def policies(sid=:unset)
                    if sid.nil?
                        raise ArgumentError, 'sid cannot be nil'
                    end
                    if sid == :unset
                        @policies ||= PoliciesList.new self
                    else
                        PoliciesContext.new(self, sid)
                    end
                end
                ##
                # @param [String] sid The unique string created by Twilio to identify the Supporting Document resource.
                # @return [Twilio::REST::Trusthub::V1::SupportingDocumentContext] if sid was passed.
                # @return [Twilio::REST::Trusthub::V1::SupportingDocumentList]
                def supporting_documents(sid=:unset)
                    if sid.nil?
                        raise ArgumentError, 'sid cannot be nil'
                    end
                    if sid == :unset
                        @supporting_documents ||= SupportingDocumentList.new self
                    else
                        SupportingDocumentContext.new(self, sid)
                    end
                end
                ##
                # @param [String] sid The unique string that identifies the Supporting Document Type resource.
                # @return [Twilio::REST::Trusthub::V1::SupportingDocumentTypeContext] if sid was passed.
                # @return [Twilio::REST::Trusthub::V1::SupportingDocumentTypeList]
                def supporting_document_types(sid=:unset)
                    if sid.nil?
                        raise ArgumentError, 'sid cannot be nil'
                    end
                    if sid == :unset
                        @supporting_document_types ||= SupportingDocumentTypeList.new self
                    else
                        SupportingDocumentTypeContext.new(self, sid)
                    end
                end
                ##
                # @param [String] sid The unique string that we created to identify the Customer-Profile resource.
                # @return [Twilio::REST::Trusthub::V1::TrustProductsContext] if sid was passed.
                # @return [Twilio::REST::Trusthub::V1::TrustProductsList]
                def trust_products(sid=:unset)
                    if sid.nil?
                        raise ArgumentError, 'sid cannot be nil'
                    end
                    if sid == :unset
                        @trust_products ||= TrustProductsList.new self
                    else
                        TrustProductsContext.new(self, sid)
                    end
                end
                ##
                # Provide a user friendly representation
                def to_s
                    '<Twilio::REST::Trusthub::V1>';
                end
            end
        end
    end
end
