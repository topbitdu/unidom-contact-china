# Unidom Contact China

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The China Contact domain model engine includes China Mobile Phone Number and its relative models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。中国行政区划领域模型引擎包括中国大陆的手机号码及其相关的模型。

## Usage in Gemfile:
```ruby
gem 'unidom-contact-china'
```

## Run the Database Migration:
```shell
rake db:migrate
```

## Call the Model:
```ruby
Unidom::Contact::China::MobilePhoneNumber.valid_at.alive.first
```
