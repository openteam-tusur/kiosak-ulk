module ContentHelper
  include AutoHtml

  def auto_html_for(content)
    auto_html content do
      youtube(:width => 640, :height => 360)
      vimeo(:width => 640, :height => 360)
    end
  end
end
