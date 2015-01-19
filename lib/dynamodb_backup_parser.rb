require "dynamodb_backup_parser/version"

module DynamodbBackupParser
  def self.parse(text)
    text.split("\n").map { |line| DynamodbBackupParser.parse_line(line) }
  end

  private

  def self.parse_line(line)
    # \u0002 is STX -> TC2(Start of TeXt)
    line.split("\u0002").each_with_object({}) do |item, memo|
      # \u0003 is ETX TC3(End of TeXt)
      m = /(?<key>.*)\u0003{"(?<type>.*)":"(?<value>.*)"}/.match(item)
      memo[m[:key]] = m[:type] == "n" ? m[:value].to_f : m[:value]
    end
  end
end
