module ReactionsHelper

  def display_unpublished_indicator(reaction)
    if reaction.publish_status == "Unpublished"
      "(Unpublished)"
    end #if
  end #display_unpublished_indicator

end #ReactionsHelper
