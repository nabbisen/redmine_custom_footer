Redmine::Plugin.register :redmine_custom_footer do
  name 'Redmine Custom Footer plugin'
  author 'nabbisen'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'https://github.com/nabbisen'
end

class CustomFooterHookViewListener < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context={})
    footer_content = 'some_footer_content'
    [
      "<script>document.addEventListener('DOMContentLoaded',function(){var footer = document.getElementById('footer').innerHTML='<div class=\    "bgl\"><div class=\"bgr\"><div style=\"text-align:center;\">#{footer_content}</div></div></div>';});</script>",
    ]
  end
end
