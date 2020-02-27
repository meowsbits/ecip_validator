require 'yaml'
require 'front_matter_parser'

module EipValidator
  class Loader
    UNSAFE_LOADER = ->(string) { YAML.load(string) }

    def self.load(file_name)
      loaded = FrontMatterParser::Parser.parse_file(file_name, loader: UNSAFE_LOADER)
      if loaded
        return loaded.front_matter
      end
    end
  end
end
