module HomeHelper
  def extract_first_image(content)
    Nokogiri::HTML.fragment(content).search("img").first
  end

  def truncate_text(content, link_object)
    Nokogiri::HTML(content).text.
      truncate(100, omission: (link_to '.. read more', link_object)).
      html_safe
  end
end
