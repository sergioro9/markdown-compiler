require 'minitest/autorun'
require 'minitest/reporters'
require 'byebug'
require 'fileutils'
require 'benchmark'
require 'ronn'
require 'ruby-prof'

#Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]
#Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(color: true)]
Minitest::Reporters.use! [Minitest::Reporters::ProgressReporter.new]
