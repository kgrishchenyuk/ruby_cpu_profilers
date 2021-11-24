require 'json'
require 'stackprof'
require_relative 'work.rb'

profile = StackProf.run(mode: :wall, raw: true) do
  work
end

File.write('stackprof_reports/stackprof.json', JSON.generate(profile))
