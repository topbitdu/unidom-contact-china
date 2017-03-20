describe Unidom::Contact::China::MobilePhoneNumber, type: :model do

  before :each do
  end

  after :each do
  end

  context '.before_validation' do

    model_attributes_list = {
      { phone_number: '139123456789' } => { network_identification_number: '139', area_code: '1234', serial_number: '5678' },
      { phone_number: '13912345678'  } => { network_identification_number: '139', area_code: '1234', serial_number: '5678' },
      { phone_number: '13812395670'  } => { network_identification_number: '138', area_code: '1239', serial_number: '5670' },
      { phone_number: '1391234567'   } => { network_identification_number: '139', area_code: '1234', serial_number:  '567' },
      { phone_number: '139123456'    } => { network_identification_number: '139', area_code: '1234', serial_number:   '56' },
      { phone_number: '13912345'     } => { network_identification_number: '139', area_code: '1234', serial_number:    '5' },
      { phone_number: '1391234'      } => { network_identification_number: '139', area_code: '1234', serial_number:     '' },
      { phone_number: '139123'       } => { network_identification_number: '139', area_code:  '123', serial_number:    nil },
      { phone_number: '13912'        } => { network_identification_number: '139', area_code:   '12', serial_number:    nil },
      { phone_number: '1391'         } => { network_identification_number: '139', area_code:    '1', serial_number:    nil },
      { phone_number: '139'          } => { network_identification_number: '139', area_code:     '', serial_number:    nil },
      { phone_number: '13'           } => { network_identification_number:  '13', area_code:    nil, serial_number:    nil },
      { phone_number: '1'            } => { network_identification_number:   '1', area_code:    nil, serial_number:    nil },
      { phone_number: ''             } => { network_identification_number:    '', area_code:    nil, serial_number:    nil },
      { phone_number: nil            } => { network_identification_number:    '', area_code:    nil, serial_number:    nil }
    }

    model_attributes_list.each do |model_attributes, attributes|
      model = described_class.new model_attributes
      model.valid?
      it "#{model_attributes.inspect} should have network_identification_number #{attributes[:network_identification_number].inspect}" do
        expect(model.network_identification_number).to eq(attributes[:network_identification_number])
      end
      it "#{model_attributes.inspect} should have area_code #{attributes[:area_code].inspect}" do
        expect(model.area_code).to eq(attributes[:area_code])
      end
      it "#{model_attributes.inspect} should have serial_number #{attributes[:serial_number].inspect}" do
        expect(model.serial_number).to eq(attributes[:serial_number])
      end
    end

  end

  context do

    model_attributes = {
      phone_number: '13912345678'
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes
    it_behaves_like 'Unidom::Contact::Concerns::AsContact',     model_attributes

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
      { phone_number: '1391234567.0' } => 3,
      { phone_number: '139123456.7'  } => 2,
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
