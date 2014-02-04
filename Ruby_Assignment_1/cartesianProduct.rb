class CartesianProduct

#A Cartesian product is a sequence that enumerates every possible pair from the two collections,
# where the pair consists of one element from each collection.

    include Enumerable #module that allows for searching, mapping, etc. when the each method is included

     def initialize(a, b) #two sequences to be taken as arguments. 
		@a = a
		@b = b
	end

	def each
		return to_enum unless block_given? # returns an iterator which yields the cartesian product 
	@a.each do |x| #of the two sequences used in the class' constructor. 
		@b.each { |y| yield [x, y] } #The iterator yields the values one at a time as 2 element arrays.
    end
  end

end

my_Product = CartesianProduct.new([:a,:b], [4,5])

my_Product.each { |elt| puts elt.inspect }

# [:a, 4]

# [:a, 5]

# [:b, 4]

# [:b, 5]

my_Product = CartesianProduct.new([:a,:b], [])

my_Product.each { |elt| puts elt.inspect }

