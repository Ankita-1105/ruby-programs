class Student
  def initialize(student_data)
    @student_data = student_data
    @passing_percentage = 34.00
    @passed_students = []
    @failed_students = []
  end

  def passed_students
    @student_data.each do |data|
      if data[:percentage] >= @passing_percentage
        @passed_students.push(data)
      end
    end
    @passed_students
  end

  def failed_students
    @student_data.each do |data|
      if data[:percentage] < @passing_percentage
        @failed_students.push(data)
      end
    end
    @failed_students
  end
end

data = [{first_name: 'rani', last_name: 'patidar', city: 'indore', percentage: 89.9, dob: '24/02/1995'},
        {first_name: 'shreya', last_name: 'sen', city: 'ujjain', percentage: 30, dob: '12/08/1996'},
        {first_name: 'pinky', last_name: 'patel', city: 'indore', percentage: 60.9, dob: '04/12/1995'}]

students = Student.new(data)
puts "Passed Students (#{students.passed_students.count}) : #{students.passed_students}"
puts "\n\n"
puts "Failed Students (#{students.failed_students.count}) : #{students.failed_students}"
