require "spec_helper"

describe DynamodbBackupParser do
  it "has a version number" do
    expect(DynamodbBackupParser::VERSION).not_to be nil
  end

  describe ".parse" do
    it "parse backup file" do
      expect(
        DynamodbBackupParser.parse(read_support_file("simple-backup")),
      ).to eq [
        { "foo" => 1.0, "bar" => "test" },
        { "foo" => 2.3, "bar" => "test2" },
      ]
    end
  end
end
