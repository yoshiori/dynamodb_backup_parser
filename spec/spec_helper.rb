$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "dynamodb_backup_parser"

def read_support_file(file_name)
  File.open(File.join(__dir__, "support/files/", file_name)).read
end
