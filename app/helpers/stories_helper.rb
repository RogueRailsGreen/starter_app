module StoriesHelper
  def story_summary( story )
    "<b>In order to</b> #{ story.in_order_to }, <b>as a</b> #{ story.as_a }, <b>I want to</b> #{ story.i_want_to }".html_safe
  end
end