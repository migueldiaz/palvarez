require 'test_helper'

class PalvarezControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get palvarez_index_url
    assert_response :success
  end

end
