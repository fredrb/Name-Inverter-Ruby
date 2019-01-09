class NameInverter

	def name_invalid?(name)
		name.nil? || name == "" || name.is_a?(Numeric)
	end

	def invert(name)
		if name_invalid?(name)
			''
		else
			name = name.strip
			parts = name.split(' ')
			if parts.length > 1
				parts[1] + ", " + parts[0]
			else
				name
			end
		end
	end
end

