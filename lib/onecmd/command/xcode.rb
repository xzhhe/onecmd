require 'fileutils'
require_relative 'xcode/rm_derived_data'

module OneCmd
  class Command
    class Xcode < Command
      self.abstract_command = true

      self.summary = 'for xcode ide'
      # self.default_subcommand = 'list'

      # extend Executable
      # executable :git

      def dir
        # config.repos_dir + @name
      end
    end
  end
end
