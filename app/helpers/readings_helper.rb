# frozen_string_literal: true

module ReadingsHelper
  def new_badge(index)
    '<span class="badge badge-secondary">New</span>'.html_safe if index.zero?
  end

  def today_badge(date)
    if date == Date.today
      '<span class="badge badge-secondary">Today</span>'.html_safe
    end
  end
end
