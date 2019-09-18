=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

=end

def input_students # defining function for user input of student names
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = [] # Creating empty array called students for inputted student names to go in
  name = gets.chomp # Naming user inputted student names
  while !name.empty? do # Execute repeatedly as long as name variable is not empty; ! means negation; if empty, move on
    students << {name: name, cohort: :november} # << is shovel operator which puts things in the array students with hash characteristics
    puts "Now we have #{students.count} students." # embedding current student count after each name input
    name = gets.chomp
  end
  students # When name is empty, output the array 'students'
end

def print_header
  puts "The Students of Villains Academy"
  puts "--------------"
end

def print(students)
  students.each do |student| # For each of the students, using the argument student (in red)
    puts "#{student[:name]} (#{student[:cohort]} cohort)" # Will Bath (november cohort)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
