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

	def invert(name)
		return '' if name_invalid?(name)
		name = name.strip
		parts = name.split(' ')
		return name if parts.length == 1
		if has_title?(parts)
			name
		else
			parts[1] + ", " + parts[0]
		end
	end
end

