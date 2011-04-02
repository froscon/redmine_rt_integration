module RedmineRtIntegration
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_show_details_bottom, :partial => 'rt_integration/custom_field_prettifier'
  end
end
