# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def google_font_link_tag(family)
    tag('link', {:rel => :stylesheet, :type => Mime::CSS, :href => "http://fonts.googleapis.com/css?family=#{family}"}, false, false)
  end

  def favicon_link_tag(source='/favicon.ico', options={})
    tag('link', {
          :rel  => 'shortcut icon',
          :type => 'image/vnd.microsoft.icon',
          :href => path_to_image(source)
        }.merge(options.symbolize_keys))
  end
  
end
