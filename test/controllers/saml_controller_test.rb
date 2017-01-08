require 'test_helper'

class SamlControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get saml_index_url
    assert_response :success
  end

  test "should get sso" do
    get saml_sso_url
    assert_response :success
  end

  test "should get acs" do
    get saml_acs_url
    assert_response :success
  end

  test "should get metadata" do
    get saml_metadata_url
    assert_response :success
  end

  test "should get logout" do
    get saml_logout_url
    assert_response :success
  end

end
