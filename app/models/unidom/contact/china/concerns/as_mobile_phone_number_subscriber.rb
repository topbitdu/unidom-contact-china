module Unidom::Contact::China::Concerns::AsMobilePhoneNumberSubscriber

  extend ActiveSupport::Concern

  include Unidom::Contact::Concerns::AsSubscriber

  included do |includer|

    has_many :china_mobile_phone_numbers, through: :contact_subscriptions, source: :contact, source_type: 'Unidom::Contact::China::MobilePhoneNumber'

  end

end
