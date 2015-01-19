# DynamodbBackupParser

DynamodbBackupParser is a parser for dynamodb backup file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dynamodb_backup_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dynamodb_backup_parser

## Usage

DyanmoDB Backup file

see: [http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-importexport-ddb-pipelinejson-verifydata2.html
  ](http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-importexport-ddb-pipelinejson-verifydata2.html
  )

```
foo[ETX]{"n":"1"}[STX]bar[ETX]{"s":"test"}
foo[ETX]{"n":"2.3"}[STX]bar[ETX]{"s":"test2"}
```

```ruby
DynamodbBackupParser.parse(BACKUP_FILE)
# ->
[
  { "foo" => 1.0, "bar" => "test" },
  { "foo" => 2.3, "bar" => "test2" },
]
```


## Contributing

1. Fork it ( https://github.com/yoshiori/dynamodb_backup_parser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
