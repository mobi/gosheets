#!/usr/bin/env ruby

result = `sass gosheets.scss gosheets.css`
raise result unless result.empty?
raise 'When compiled the module should output some CSS' unless File.exist?('gosheets.css')
puts 'Regular compile worked successfully'
