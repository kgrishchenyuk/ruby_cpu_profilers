require 'stackprof'
require_relative 'work.rb'

StackProf.run(mode: :wall, out: 'stackprof_reports/stackprof.dump', interval: 1000) do
  work
end
