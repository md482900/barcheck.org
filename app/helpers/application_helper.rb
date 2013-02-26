module ApplicationHelper
	def render_stars(rating)
		StarsRenderer.new(rating,self).render_stars
	end	

	#Zeit auf Deutsch	
	def distance_of_time_in_words(from_time, to_time = 0, include_seconds = false)
    from_time = from_time.to_time if from_time.respond_to?(:to_time)
    to_time = to_time.to_time if to_time.respond_to?(:to_time)
    distance_in_minutes = (((to_time - from_time).abs)/60).round
    distance_in_seconds = ((to_time - from_time).abs).round

    case distance_in_minutes
      when 0..1
        return (distance_in_minutes == 0) ? 'weniger als einer Minute' : 'einer Minute' unless include_seconds
        case distance_in_seconds
          when 0..4   then 'weniger als 5 Sekunden'
          when 5..9   then 'weniger als 10 Sekunden'
          when 10..19 then 'weniger als 20 Sekunden'
          when 20..39 then 'einer halben Minute'
          when 40..59 then 'weniger als einer Minute'
          else             '1 Minute'
        end

      when 2..44           then "#{distance_in_minutes} Minuten"
      when 45..89          then 'ca. 1 Stunde'
      when 90..1439        then "ca. #{(distance_in_minutes.to_f / 60.0).round} Stunden"
      when 1440..2879      then '1 Tag'
      when 2880..43199     then "#{(distance_in_minutes / 1440).round} Tagen"
      when 43200..86399    then 'ca. 1 Monat'
      when 86400..525599   then "#{(distance_in_minutes / 43200).round} Monaten"
      when 525600..1051199 then 'ca. 1 Jahr'
      else                      "#{(distance_in_minutes / 525600).round} Jahren"
    end
  end





end
