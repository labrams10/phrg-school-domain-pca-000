# class School
#   attr_accessor :name :roster

#   def initialize(name)
#     @name = name
#     @roster = {}
#   end

#   def add_student(name, grade)

#   end
# end

require 'pry'
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
    @roster[grade] << student_name
    else
    @roster[grade] = []
    @roster[grade] << student_name
    end
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each { |grade, names| names.sort! }
  end
end

