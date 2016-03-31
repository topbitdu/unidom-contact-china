# Unidom Contact China 中国联系方式领域模型引擎

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/unidom-contact-china.svg)](https://badge.fury.io/rb/unidom-contact-china)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The China Contact domain model engine includes China Mobile Phone Number and its relative models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。中国行政区划领域模型引擎包括中国大陆的手机号码及其相关的模型。

## Recent Update
Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.

## Usage in Gemfile
```ruby
gem 'unidom-contact-china'
```

## Run the Database Migration
```shell
rake db:migrate
```
The migration versions start with 2001039156.

## Call the Model
```ruby
phone_number = Unidom::Contact::China::MobilePhoneNumber.new phone_number: '13912345678'
phone_number.save!

Unidom::Contact::China::MobilePhoneNumber.valid_at.alive.first # Get all active China mobile phone numbers
```
