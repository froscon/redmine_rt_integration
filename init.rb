require 'redmine'
require_dependency 'redmine_rt_integration/hooks'
require_dependency 'redmine_rt_integration/rt_macro'

Redmine::Plugin.register :redmine_rt_integration do
  name 'Redmine RT Integration plugin'
  author 'Daniel Lehmann'
  description 'This plugins allows the integration of RT ticket references.'
  version '1.0.0'
  url 'http://github.com/froscon/redmine_rt_integration'
  author_url 'http://froscon.org'

  Redmine::WikiFormatting::Macros.register do
    desc <<DESC
Makes a link to FrOSCon RT.
How to use:
&#123;&#123;rt(13006)&#125;&#125; generates the link {{rt(13006)}}
DESC
    macro :rt do |obj, args|
      h = RedmineRtIntegration::RtMacro.new
      h.get_tag(args)
    end
  end
end

