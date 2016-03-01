module ApplicationHelper
  def render_link_for_navigation(klass, item, data = {})
    if item['external_link'].present?
      if item['external_link'].match(/\Ahttps?/)
        link_to item['title'], item['external_link'], :class => klass, :target => :_blank, :data => data
      else
        link_to item['title'], item['external_link'], :class => klass, :data => data
      end
    else
      link_to item['title'], item['path'], :class => klass, :data => data
    end
  end

  def right_side_present?
    @right_navigation.present? || @right_links.present? || @right_advert.present? || @right_documents.present? || @right_contacts.present?
  end

end
