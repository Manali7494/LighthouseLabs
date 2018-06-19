require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

=begin
Load the third store (into @store3) as you did the other two before.
Using Active Record's destroy method, delete the store from the database.
Verify that the store has been deleted by again outputting (putsing) the count (as you did in Exercise 1.)
=end

# Your code goes here ...
@store3 = Store.find_by(id: 3)
@store3.destroy

items = Store.all.count
puts "There are #{items} stores in the database"