class NameInverter

	def name_invalid?(name)
		name.nil? || name == "" || name.is_a?(Numeric)
	end

	def invert(name)
		if name_invalid?(name)
			''
		else
			name
		end
	end
end

