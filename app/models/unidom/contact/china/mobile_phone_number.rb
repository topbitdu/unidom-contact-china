##
# China Mobile Phone Number 是中国移动电话号码。

class Unidom::Contact::China::MobilePhoneNumber < Unidom::Contact::China::ApplicationRecord

  FORMAT_VALIDATION_REGEX = /\A1[3-9]\d{9}\z/

  self.table_name = 'unidom_china_mobile_phone_numbers'

  include Unidom::Common::Concerns::ModelExtension
  include Unidom::Contact::Concerns::AsContact

  validates :phone_number,                  presence: true, length: { is: self.columns_hash['phone_number'].limit                  }, numericality: { integer_only: true }, format: FORMAT_VALIDATION_REGEX
  validates :network_identification_number, presence: true, length: { is: self.columns_hash['network_identification_number'].limit }, numericality: { integer_only: true }
  validates :serial_number,                 presence: true, length: { is: self.columns_hash['serial_number'].limit                 }, numericality: { integer_only: true }
  validates :area_code,                     numericality: { integer_only: true }

  scope :phone_number_is,                  ->(phone_number)                  { where phone_number:                  phone_number                  }
  scope :network_identification_number_is, ->(network_identification_number) { where network_identification_number: network_identification_number }
  scope :area_code_is,                     ->(area_code)                     { where area_code:                     area_code                     }
  scope :serial_number_is,                 ->(serial_number)                 { where serial_number:                 phone_number                  }

  before_validation do
    self.network_identification_number = self.phone_number[0..2]
    self.area_code                     = self.phone_number[3..6]
    self.serial_number                 = self.phone_number[7..10]
  end

end
