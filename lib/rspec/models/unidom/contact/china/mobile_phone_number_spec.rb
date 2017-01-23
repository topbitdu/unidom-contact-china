describe Unidom::Contact::China::MobilePhoneNumber, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      phone_number: '13912345678'
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

  end

end
