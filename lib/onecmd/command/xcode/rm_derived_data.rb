module OneCmd
  class Command
    class Xcode < Command
      class RmDerivedData < Xcode
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
          path = "#{ENV['HOME']}/Library/Developer/Xcode/DerivedData"
          FileUtils.rm_rf(path)
          puts "✅ rm derived data: #{path}"
        end
      end
    end
  end
end
