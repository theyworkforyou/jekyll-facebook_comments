require 'jekyll/facebook_comments/version'
require 'liquid'

module Jekyll
  module FacebookComments
    class FacebookJavascriptSDK < Liquid::Tag
      def render(context)
        context.registers[:facebook] ||= {}
        context.registers[:facebook][:sdk] ||= File.read(
          File.expand_path('../../../templates/facebook_javascript_sdk.html', __FILE__)
        )
      end
    end
    Liquid::Template.register_tag('facebook_javascript_sdk', Jekyll::FacebookComments::FacebookJavascriptSDK)

    class FacebookCommentBox < Liquid::Tag
      def render(context)
        context.registers[:facebook] ||= {}
        context.registers[:facebook][:comment_box] ||= Liquid::Template.parse(
          File.read(
            File.expand_path('../../../templates/facebook_comment_box.html', __FILE__)
          )
        )
        context.registers[:facebook][:comment_box].render(context)
      end
    end
    Liquid::Template.register_tag('facebook_comment_box', Jekyll::FacebookComments::FacebookCommentBox)
  end
end

