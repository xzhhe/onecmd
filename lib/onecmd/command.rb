require 'colored2'
require 'claide'

module OneCmd
  class Command < CLAide::Command
    # include Options
    require 'onecmd/command/xcode'

    self.abstract_command = true
    self.command = 'onecmd'
    self.version = VERSION
    self.description = 'a iOS dev tools cmd.'

    def self.options
      [
        ['--silent', 'Show nothing']
      ].concat(super)
    end

    def self.run(argv)
      help! 'You cannot run onecmd as root.' if Process.uid == 0 && !Gem.win_platform?
      super(argv)
    ensure
      # Pod::UI.print_warnings
    end

    def initialize(argv)
      super
      # config.silent = argv.flag?('silent', config.silent)
      # config.verbose = self.verbose? unless verbose.nil?
      unless self.ansi_output?
        Colored2.disable!
        String.send(:define_method, :colorize) { |string, _| string }
      end
    end
  end
end
