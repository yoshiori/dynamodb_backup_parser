# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dynamodb_backup_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "dynamodb_backup_parser"
  spec.version       = DynamodbBackupParser::VERSION
  spec.authors       = ["Yoshiori SHOJI"]
  spec.email         = ["yoshiori@gmail.com"]
  spec.summary       = %q{DynamodbBackupParser is a parser for dynamodb backup file.}
  spec.description   = %q{DynamodbBackupParser is a parser for dynamodb backup file}
  spec.homepage      = "https://github.com/yoshiori/dynamodb_backup_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
