require 'fileutils'
require_relative 'macosx/hiden_files'

module OneCmd
  class Command
    class Macosx < Command
      self.abstract_command = true
      self.summary = 'for mac os x'
    end
  end
end
