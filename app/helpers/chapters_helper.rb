module ChaptersHelper
  def link_to_audio(chapter)
    link_to(audio_svg, chapter.audio_url)
  end

  def audio_svg
    Octicons::Octicon.new('megaphone').to_svg.html_safe
  end
end