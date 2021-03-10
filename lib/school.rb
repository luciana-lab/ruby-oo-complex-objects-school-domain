require 'pry'
#School
    #::new
        #has an empty roster when initialized
    #add_student
        #is able to add a student
        #is able to add multiple students to a class (grade)
        #is able to add students to different grades
    #grade
        #is able to retreive students from a grade
    #sort
        #is able to sort the students
class School

    def initialize(school)
        @roster = {}
        @school = school
    end

    def roster
        @roster
    end

    def add_student(students, grades)
        if @roster.include?(grades)
            @roster[grades] << students
        else
            @roster[grades] = [students]
        end
        end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            value.sort!
        end
    end
end
