module SectionsHelper
  def pencil_svg
    Octicons::Octicon.new("pencil").to_svg.html_safe
  end
end
