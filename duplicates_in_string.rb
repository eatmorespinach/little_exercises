#Create an algorithm to determine if a string has all unique characters without the .uniq method. 

#With .uniq =

# def word_uniq? str
#  str == str.split("").uniq.join
# end

class Duplicate

	def initialize(word)
		@word = word
		@t_or_f = true
	end

	def find_duplicates
		@word.each_char do |i|
			@dup = @word.count(i)	
			if @dup > 1
				@t_or_f = false
			end
		end
	end
	
	def display_answer
		if @t_or_f == true
			puts "#{@word} doesn't have any duplicate characters"
		else 
			puts "Yep, #{@word} has duplicate characters"
		end
	end

end

class Runner
	def self.run
		start = Duplicate.new("Salsa")
		start.find_duplicates
		start.display_answer
	end
end

Runner.run