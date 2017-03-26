shared_examples 'Unidom::Contact::China::Concerns::AsMobilePhoneNumberSubscriber' do |model_attributes|

  context do

    it_behaves_like 'Unidom::Contact::Concerns::AsSubscriber', model_attributes

=begin
    mobile_phone_number_1_attributes = {
      phone_number: '13901020304'
    }
    mobile_phone_number_2_attributes = {
      phone_number: '13904030201'
    }

    it_behaves_like 'has_many', model_attributes, :china_mobile_phone_numbers, Unidom::Contact::China::MobilePhoneNumber, [ mobile_phone_number_1_attributes, mobile_phone_number_2_attributes ]
=end

  end

end
