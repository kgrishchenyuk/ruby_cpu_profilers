require 'ruby-prof'
require_relative 'work.rb'

RubyProf.measure_mode = RubyProf::WALL_TIME

result = RubyProf.profile do
  work
end

printer = RubyProf::GraphHtmlPrinter.new(result)
printer.print(File.open('ruby_prof_reports/graph.html', 'w+'))
