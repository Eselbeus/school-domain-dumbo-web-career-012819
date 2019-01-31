# code here!
require 'pry'
class School
  attr_accessor :add_student, :roster
  
  def initialize(name)
    @name = name
    roster = {}
    @roster = roster
  end
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
      # binding.pry
    else
      @roster[grade] = [student]
    end
  end
  
end