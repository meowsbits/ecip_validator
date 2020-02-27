require 'yaml'
require 'front_matter_parser'

module EcipValidator
  class Loader
    UNSAFE_LOADER = ->(string) { YAML.load(string) }

    def self.load(file_name)
      begin
        FrontMatterParser::Parser.parse_file(file_name, loader: UNSAFE_LOADER).front_matter
      rescue
        puts "frontmatterparser rescued from a nil death"
      end
    end
  end
end
