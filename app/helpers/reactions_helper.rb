module ReactionsHelper

  def display_unpublished_indicator(reaction)
    if reaction.publish_status == "Unpublished"
      "(Unpublished)"
    end #if
  end #display_unpublished_indicator

  def publish_status_style(reaction)
    if reaction.publish_status == "Published"
      "listing"
    else
      "listing unpublished-article"
    end #if
  end #publish_status_style     

end #ReactionsHelper
