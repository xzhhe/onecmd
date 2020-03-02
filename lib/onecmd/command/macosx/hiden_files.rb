module OneCmd
  class Command
    class Macosx < Command
      class HidenFiles < Macosx
        self.summary = 'for mac osx system hiden files'

        self.description = <<-DESC
          hide/display hiden files
        DESC

        def self.options
          [['--hide', 'hide system hiden files']].concat(super)
        end

        def initialize(argv)
          @hide = argv.flag?('hide', true)
          super
        end

        def run
          if @hide
            system('defaults write com.apple.finder AppleShowAllFiles No && killall Finder')
          else
            system('defaults write com.apple.finder AppleShowAllFiles Yes && killall Finder')
          end
        end
      end
    end
  end
end
