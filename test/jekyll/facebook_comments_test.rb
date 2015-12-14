require 'test_helper'

class Jekyll::FacebookCommentsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Jekyll::FacebookComments::VERSION
  end

  def test_rendering_sdk
    sdk = File.read(File.expand_path('../../../templates/facebook_javascript_sdk.html', __FILE__))
    out = Liquid::Template.parse('{% facebook_javascript_sdk %}').render
    assert_equal sdk, out
  end

  def test_rendering_comment_box
    box = Liquid::Template.parse(File.read(File.expand_path('../../../templates/facebook_comment_box.html', __FILE__))).render
    out = Liquid::Template.parse('{% facebook_comment_box %}').render
    assert_equal box, out
  end
end
