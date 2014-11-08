require 'minitest'
module MiniTestAssertions
  def self.extended(base)
    base.extend(MiniTest::Assertions)
    base.assertions = 0
  end

  attr_accessor :asserrtions
end
World(MiniTestAssertions)
