
require 'acts_as_imageable/exceptions'
require 'acts_as_imageable/imageable'

module ActsAsImageable
  module_function

  # Return the root path of this gem.
  #
  # @return [String] Path of the gem's root.
  def root
    File.dirname __dir__
  end

  # Return the lib path of this gem.
  #
  # @return [String] Path of the gem's lib.
  def lib
    File.join root, 'lib'
  end

  # Return the test path of this gem.
  #
  # @return [String] Path of the gem's test.
  def test
    File.join root, 'test'
  end
end
