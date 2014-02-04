load 'dessert.rb'

class JellyBean < Dessert

    def initialize(name, calories, flavor)

       super(name, calories)
       @flavor = flavor # setting the instance variables

    end

	attr_accessor :flavor #getter and setter for flavor
 

    def delicious?

        if (defined? @flavor != nil) and @flavor == 'black licorice'
			return false
		
		else 
			return true
		end
			

    end

end

output = JellyBean.new('ice cream', 500, 'chocolate') 
puts "#{output.name} is delicious and it is #{output.calories} calories with flavor #{output.flavor}"
