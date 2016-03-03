module ApplicationHelper
  def render_partial_for_region(region, prefix = nil)
    prefix = "#{prefix}_" if prefix.present?
    if region && (region.response_status == 200 || !region.response_status?)
      partial = "regions/#{prefix}#{region.template}"
      render :partial => partial,
        :locals => { :object => region.content, :extend_object => region.extend_content, :response_status => region.response_status  }
    else
      partial = region.response_status? ? "regions/error_#{region.response_status}" : 'regions/error'
      render :partial => partial, :locals => { :region => region  }
    end
  end

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
