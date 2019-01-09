class NameInverter

	def initialize
		@titles = [ "MR." ]
	end

	def name_invalid?(name)
		name.nil? || name == "" || name.is_a?(Numeric)
	end

	def has_title?(parts)
		@titles.any?(parts[0].upcase)
	end

	def flip_parts(parts)
		return parts[0] if parts.length == 1
		parts[1] + ", " + parts[0]
	end

	def invert(name)
		return '' if name_invalid?(name)
		name = name.strip
		parts = name.split(' ')
		return name if parts.length == 1
		if has_title?(parts)
			parts.slice!(0) + ' ' + flip_parts(parts)
		else
			flip_parts(parts)
		end
	end
end

