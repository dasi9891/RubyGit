# Part1: Hello World
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
hello = HelloWorldClass.new("{Danielle}")
hello.sayHi

#dissecting the above code, please note the following: 
#a class named HelloWorldClass has been created, initializeis a class constructor which takes a parameter named name,
# all comments begin with a '#' character, and writes text to the screen.
