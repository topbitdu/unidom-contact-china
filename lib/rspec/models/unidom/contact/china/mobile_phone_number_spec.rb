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

    it_behaves_like 'scope', :phone_number_is, [
      { attributes_collection: [ model_attributes                                    ], count_diff: 0, args: [ '13912345679' ] },
      { attributes_collection: [ model_attributes                                    ], count_diff: 1, args: [ '13912345678' ] },
      { attributes_collection: [ model_attributes.merge(phone_number: '13812305679') ], count_diff: 1, args: [ '13812305679' ] },
      { attributes_collection: [ model_attributes.merge(phone_number: '13812305679') ], count_diff: 0, args: [ '13912345678' ] } ]

    it_behaves_like 'scope', :network_identification_number_is, [
      { attributes_collection: [ model_attributes                                    ], count_diff: 0, args: [ '138' ] },
      { attributes_collection: [ model_attributes                                    ], count_diff: 1, args: [ '139' ] },
      { attributes_collection: [ model_attributes.merge(phone_number: '13812305679') ], count_diff: 1, args: [ '138' ] },
      { attributes_collection: [ model_attributes.merge(phone_number: '13812305679') ], count_diff: 0, args: [ '139' ] } ]

    it_behaves_like 'scope', :area_code_is, [
      { attributes_collection: [ model_attributes                                    ], count_diff: 0, args: [ '1230' ] },
      { attributes_collection: [ model_attributes                                    ], count_diff: 1, args: [ '1234' ] },
      { attributes_collection: [ model_attributes.merge(phone_number: '13812305679') ], count_diff: 1, args: [ '1230' ] },
      { attributes_collection: [ model_attributes.merge(phone_number: '13812305679') ], count_diff: 0, args: [ '1234' ] } ]

    it_behaves_like 'scope', :serial_number_is, [
      { attributes_collection: [ model_attributes                                    ], count_diff: 0, args: [ '5679' ] },
      { attributes_collection: [ model_attributes                                    ], count_diff: 1, args: [ '5678' ] },
      { attributes_collection: [ model_attributes.merge(phone_number: '13812305679') ], count_diff: 1, args: [ '5679' ] },
      { attributes_collection: [ model_attributes.merge(phone_number: '13812305679') ], count_diff: 0, args: [ '5678' ] } ]

  end

end
