require 'pry'
require_relative 'mentor_group'
require_relative 'student'
require_relative 'student_randomizer'
require_relative 'input_validator'

puts 'What are the names of the people in your group (please separate by comma)?'
name_string = gets.chomp

name_array = name_string.split(', ')

student_array = name_array.map { |name| Student.new(name) }

puts 'What is the name of your mentor group?'
group_name = gets.chomp

mentor_group = MentorGroup.new(mentor_group)

mentor_group.fill_mentor_group(student_array)

randomizer = StudentRandomizer.new(mentor_group)

puts 'How would you like to choose your group (number, string, fair)?'
random_type = InputValidator.get_type_input

if random_type == 'number'
  puts 'What number would you like to use?'
  number = gets.chomp.to_i
  randomizer.choose_by_number(number)
elsif random_type == 'string'
  puts 'What is your secret random passcode?'
  passcode = gets.chomp
  randomizer.choose_by_string(passcode)
else
  randomizer.choose_fairly
end
