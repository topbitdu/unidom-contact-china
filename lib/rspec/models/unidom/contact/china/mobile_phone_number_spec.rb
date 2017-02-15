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

    it_behaves_like 'validates', model_attributes, :phone_number,
      {                              } => 0,
      { phone_number: nil            } => 4,
      { phone_number: ''             } => 4,
      { phone_number: 'A'            } => 3,
      { phone_number: '1'            } => 2,
      { phone_number: '1391234567'   } => 2,
      { phone_number: 1391234567     } => 2,
      { phone_number: '-1391234567'  } => 1,
      { phone_number: -1391234567    } => 1,
      { phone_number: '13912345678'  } => 0,
      { phone_number: 13912345678    } => 0,
      { phone_number: -13912345678   } => 2,
      { phone_number: '-13912345678' } => 2,
      { phone_number: '139123456789' } => 2,
      { phone_number: '1391234567.0' } => 2,
      { phone_number: '1391234567.8' } => 2,
      { phone_number: '10912345678'  } => 1,
      { phone_number: '11912345678'  } => 1,
      { phone_number: '12912345678'  } => 1,
      { phone_number: '13912345678'  } => 0,
      { phone_number: '14912345678'  } => 0,
      { phone_number: '15912345678'  } => 0,
      { phone_number: '16912345678'  } => 0,
      { phone_number: '17912345678'  } => 0,
      { phone_number: '18912345678'  } => 0,
      { phone_number: '19912345678'  } => 0,
      { phone_number: 'A'*11         } => 2

  end

end
