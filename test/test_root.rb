require 'test_helper'

class TestRoot < Minitest::Test

  include Webmachine::Test

  def test_root_is_success
    get '/'
    assert_equal 200, response.code
  end

  def app
    OssFront::App
  end
end
