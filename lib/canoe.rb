require_relative "workspace/workspace.rb"
require_relative "cmd"
require_relative "source_files"

class Canoe
  def initialize
    options = ['new', 
               'add',
               'build',
               'generate',
               'run',
               'dep',
               'clean',
               'version',
               'help',
               'update',
               'test']
    @cmd = CmdParser.new options
  end

  def parse(args)
      @cmd.parse args
  end
end
