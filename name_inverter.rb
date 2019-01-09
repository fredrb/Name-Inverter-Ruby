class NameInverter
	def invert(name)
		if name.nil? || name == "" || name.is_a?(Numeric)
			''
		else
			name
		end
	end
end

