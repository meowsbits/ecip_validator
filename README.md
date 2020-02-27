# ECIP validator

## Configuration

Validation rules are implemented in the code at [./lib/ecip_validator/validator.rp](./lib/ecip_validator/validator.rp).

## Setup

```
gem install ecip_validator
```

## Usage (command line)

```ruby
ecip_validator INPUT_FILES
```

## Usage (as a lib)

```ruby
require 'ecip_validator

EcipValidator::Runner.run 
```

### Example

```
$ ecip_validator  _specs/*.md
```

## Running tests

```
bundle exec rspec
```

## Releasing new gem

```
gem bump --version patch|minor|major
bundle exec rake release
```