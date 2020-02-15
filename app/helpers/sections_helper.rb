# frozen_string_literal: true

module SectionsHelper
  def back_to(reading)
    link_to("Back to the reading #{link_svg}".html_safe, reading)
  end

  def link_svg
    Octicons::Octicon.new('link').to_svg.html_safe
  end

  def pencil_svg
    Octicons::Octicon.new('pencil').to_svg.html_safe
  end
end
