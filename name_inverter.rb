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

	def extract_title(parts)
		return parts.slice!(0) if @titles.any?(parts[0].upcase)
		''
	end

	def flip_parts(parts)
		return parts[0] if parts.length == 1
		parts.slice!(1) + ", " + parts.join(" ")
	end

	def invert(name)
		return '' if name_invalid?(name)
		parts = name.strip.split(' ')
		(extract_title(parts) + ' ' + flip_parts(parts)).strip
	end
end

