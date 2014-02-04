class Numeric

 @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}

 def method_missing(method_id) #method id turns the 

   singular_currency = method_id.to_s.gsub( /s$/, '')

   if @@currencies.has_key?(singular_currency)

     self * @@currencies[singular_currency] #multiplies itself by the conversion rate

   else

     super

   end

 end




def in(currency) #finishes the standard conversion
    singular_currency = currency.to_s.gsub(/s$/, '')
    self / @@currencies[singular_currency]
  end
end

p 5.dollars.in(:euros)
p 10.euros.in(:rupees)
