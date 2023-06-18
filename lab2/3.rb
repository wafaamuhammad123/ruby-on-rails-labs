require 'date'
module MyModule
    class Person
      attr_accessor :fname, :lname, :birth_date, :age
  
      def initialize(fname="wafaa", lname="muhammad", birth_date=Date.today - 30*365)
        @fname = fname
        @lname = lname
        @birth_date = birth_date
        @age = calc_age
      end
  
      def get_person_data
        puts "Enter first name:"
        @fname = gets.chomp
        puts "Enter last name:"
        @lname = gets.chomp
        puts "Enter birth date (YYYY-MM-DD):"
        @birth_date = Date.parse(gets.chomp)
        @age = calc_age
      end
  
      def welcome
        puts "Welcome, #{@fname} #{@lname}!"
        puts "You are #{@age} years, #{calc_months} months, and #{calc_days} days old."
      end
  
      private
  
      def calc_age
        ((Date.today - @birth_date).to_i / 365.25).to_i
      end
  
      def calc_months
        ((Date.today - @birth_date).to_i % 365.25 / 30.44).to_i
      end
  
      def calc_days
        ((Date.today - @birth_date).to_i % 365.25 % 30.44).to_i
      end
    end
  end

person = MyModule::Person.new
person.get_person_data
person.welcome  