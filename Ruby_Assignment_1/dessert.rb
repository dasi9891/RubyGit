class Dessert

    def initialize(name, calories)

        @name = name
        @calories = calories # setting the instance variables

    end
    
    def name #getter
		@name
    end
    
    def name=(name) #setter
		@name = name
	end
    
	def calories #getter
	@calories
	end
	
	def calories=(calories) #setter
		@calories = calories
	end

    def healthy? 

        return calories < 200

    end

 

    def delicious?

        return true

    end

end

output = Dessert.new('ice cream', 500) 
puts "#{output.name} is delicious and it is #{output.calories} calories"
