module ColorizeModule
  def colorize(value, ranges)
    ranges.sort_by { |color, min| min }.each do |pair|
      if value >= pair[1]
        return "<span class='label label-#{pair[0]}'>#{value}</span>".html_safe
      end
    end
    
    return "<span class='label label-default'>#{value}</span>".html_safe
  end
end
