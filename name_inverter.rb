class NameInverter

	def name_invalid?(name)
		name.nil? || name == "" || name.is_a?(Numeric)
	end

	def has_title?(parts)
		title = parts[0].upcase
		title == 'MR.'
	end

	def invert(name)
		if name_invalid?(name)
			''
		else
			name = name.strip
			parts = name.split(' ')
			if parts.length > 1
				if has_title?(parts)
					name
				else
					parts[1] + ", " + parts[0]
				end
			else
				name
			end
		end
	end
end

