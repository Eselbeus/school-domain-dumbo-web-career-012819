# code here!
require 'pry'
class School
  attr_accessor :add_student
  attr_reader :roster
  
  def initialize(name)
    @name = name
    roster = {}
    @roster = roster
  end
  
  def add_student(student, grade)
    if roster[grade]
      roster[grade] << student
    else
      roster[grade] = [student]
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.each do |year, students|
      roster[year] = students.sort
    end
    roster
  end
  
end