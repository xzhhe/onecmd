require 'onecmd/version'
require 'rubygems'

module OneCmd
  require 'pathname'
  require 'tmpdir'
  require 'fileutils'

  class Error < StandardError; end

  # 注册所有的子模块
  autoload :Command, 'onecmd/command'
end
