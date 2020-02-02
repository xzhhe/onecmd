module OneCmd
  class Command
    class Xcode < Command
      class DerivedData < Xcode
        self.summary = 'for xcode derived data'

        self.description = <<-DESC
          eg. remove user's derived data
        DESC

        def self.options
          [['--count-only', 'Show the total number of repos']].concat(super)
        end

        def initialize(argv)
          @count_only = argv.flag?('count-only')
          super
        end

        def run
          puts '🎉 remove derived data'
        end
      end
    end
  end
end
