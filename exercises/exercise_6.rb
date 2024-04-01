require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jenny", last_name: "Jorge", hourly_rate: 200)
@store1.employees.create(first_name: "Manny", last_name: "McGee", hourly_rate: 130)
@store1.employees.create(first_name: "Fred", last_name: "Flinstone", hourly_rate: 100)

@store2.employees.create(first_name: "Chris", last_name: "Virtanre", hourly_rate: 60)
@store2.employees.create(first_name: "Jorg", last_name: "Gatch", hourly_rate: 120)
@store2.employees.create(first_name: "Matt", last_name: "Gee", hourly_rate: 130)
@store2.employees.create(first_name: "Jen", last_name: "Flinne", hourly_rate: 70)


# We haven't used the Employee class (and employees table) at all yet. 
# If you look at this table's column structure, you'll find that it has 
# a `store_id` (integer) column. This is a column that identifies which 
# store each employee belongs to. It points to the `id` (integer) column 
# of their store.

# Let's tell Active Record that these two tables are in fact related via 
# the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): 
# `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): 
# `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it 
# differs from how you create stores): `@store1.employees.create
# (first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`

# 4. Go ahead and create some more employees using the create method. 
# You can do this by making multiple calls to create (like you have before.) 
# No need to assign the employees to variables though. Create them through 
# the `@store#` instance variables that you defined in previous exercises. 
# Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). 
# Eg: `@store1.employees.create(...)`.
