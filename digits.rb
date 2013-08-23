class Digits
	def initialize
		srand(100)
		@size = 1
	end

	def number(size)
		@size = size
		return self
	end

	def four
		if @size > 1 then
			digits_array = []
			@size.times do
				digits_array << ramdom_four
			end
			return digits_array
		end

		return ramdom_four
	end

	private
	def ramdom_four
		digits = ""
		4.times do
			digits += rand(10).to_s
		end
		return digits
	end
end