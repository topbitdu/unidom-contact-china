# Unidom Contact China Change Log 中国行政区划领域模型引擎变更日志

## v0.1
1. Mobile Phone Number model & migration (20010391560010)

## v0.2
1. Improved the Mobile Phone Number model to include the Model Extension concern

## v0.3
1. Improved the Mobile Phone Number model to extract the regular expression for format validation
2. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.5

## v0.4
1. Improved the Mobile Phone Number model for the ``has_many :contact_subscriptions`` macro
2. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.9

## v0.4.1
1. Improved the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.0

## v1.0
1. Improved the Ruby Gem Specification to depend on the [unidom-contact](https://github.com/topbitdu/unidom-contact) v1.1
2. Improved the Mobile Phone Number model to include the [As Contact](https://github.com/topbitdu/unidom-contact) concern
3. As Mobile Phone Number Subscriber concern

## v1.0.1
1. Improved the Ruby Gem Specification to depend on [unidom-contact](https://github.com/topbitdu/unidom-contact) v1.3
2. Improved the Ruby Gem Specification to never depend on [unidom-common](https://github.com/topbitdu/unidom-common)

## v1.0.2
1. Improved the Ruby Gem Specification to depend on [unidom-contact](https://github.com/topbitdu/unidom-contact) v1.3.3

## v1.0.3
1. Improved the Ruby Gem Specification to depend on [unidom-contact](https://github.com/topbitdu/unidom-contact) v1.3.4
2. Improved the Engine class to include the Engine Extension concern

## v1.0.4
1. Improved the Ruby Gem Specification to depend on [unidom-contact](https://github.com/topbitdu/unidom-contact) v1.3.5
2. Improved the models to support the namespace neglecting

## v1.1
1. Models RSpec examples manifest
2. Types RSpec examples manifest
3. Validators RSpec examples manifest

## v1.1.1
1. Improved the Mobile Phone Number spec for the validations on the #``phone_number`` attribute
2. Improved the Mobile Phone Number model for the ``before_validation`` callback

## v1.1.2
1. Improved the Mobile Phone Number model for the ``serial_number_is`` scope
2. Improved the Mobile Phone Number spec for the ``phone_number_is`` scope, the ``network_identification_number_is`` scope, the ``area_code_is`` scope, & the ``serial_number_is`` scope

## v1.1.3
1. Improved the Mobile Phone Number spec for the ``before_validation`` callback

## v1.1.4
1. Improved the Mobile Phone Number model for the validations on the #``phone_number`` attribute, the #network_identification_number attribute, the #area_code attribute, the #serial_number attribute
2. Improved the Mobile Phone Number spec for the validations on the #phone_number attribute

## v1.1.5
1. Improved the Mobile Phone Number spec for the As Contact concern
2. Improved the Ruby Gem Specification to depend on [unidom-contact](https://github.com/topbitdu/unidom-contact) v1.4.4

## v1.1.6
1. As Mobile Phone Number Subscriber shared examples
2. RSpec shared examples manifest
