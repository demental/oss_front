require 'test_helper'

class TestRoot < Minitest::Test

  include Webmachine::Test

  class DummyIsp
    def accounts
      [{identifier: 'id1', mac: '12:34:45:45:56:54'}, {identifier: 'id2',mac: '12:34:45:45:56:5a'}]
    end
  end

  def setup
    OssFront.configure do |config|
      config.adapters= { myisp: DummyIsp.new }
    end
  end

  def test_myisp_accounts_is_success
    get '/isp/myisp/accounts'
    assert_equal 200, response.code
  end

  def test_nonexistingisp_responds_404
    get '/isp/bullshit/accounts'
    assert_equal 404, response.code
  end

  def teardown
  end

  def app
    OssFront::App
  end
end
