require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "styled_widget_id" do
    rendered_component = styled_widget_id("1.23")

    regexp = %r{
      <span      # match a span tag
      [^>]*      # ignore anything that isn't >
      >          # match the > to close the opening tag
      .*         # anything at all in here (e.g. other tags)
      1\.23      # the widget ID ew expect, escaping the dot
      .*         # anything after it (e.g. other tags)
      </span>    # closing span tag
    }x

    assert_match regexp, rendered_component
    assert rendered_component.html_safe?
  end
end
