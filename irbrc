#!/usr/bin/env ruby
# Based on Ryan Bates' irbrc
require 'irb/completion'
require 'irb/ext/save-history'

%w(json).each do |gem|
  begin
    gem "#{gem}"
  rescue Gem::LoadError
    system "gem install #{gem}"
  ensure
    require "#{gem}"
  end
end

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

# ActiveRecord::Base.logger.level = 1 if defined? ActiveRecord::Base

def y(obj)
  puts obj.to_yaml
end

def json_from_file(filename)
  JSON.parse(File.read(File.expand_path(filename)))
end

def addr(a)
  (a.object_id << 1).to_s(16)
end

class Object
  def mate(method_name)
    file, line = method(method_name).source_location
    `mate '#{file}' -l #{line}`
  end

  def subl(method_name)
    file, line = method(method_name).source_location
    `subl #{file}:#{line}`
  end
end

def copy(str)
  IO.popen('pbcopy', 'w') { |f| f << str.to_s }
end

def copy_history
  history = Readline::HISTORY.entries
  index = history.rindex('exit') || -1
  content = history[(index + 1)..-2].join("\n")
  puts content
  copy content
end

def paste
  `pbpaste`
end

# Break out of the Bundler jail
# from https://github.com/ConradIrwin/pry-debundle/blob/master/lib/pry-debundle.rb
# if defined? Bundler
#  Gem.post_reset_hooks.reject! { |hook| hook.source_location.first =~ %r{/bundler/} }
#  Gem::Specification.reset
#  load 'rubygems/custom_require.rb'
# end

# if defined? Rails
#  begin
#    require 'hirb'
#    Hirb.enable
#  rescue LoadError
#  end
# end
