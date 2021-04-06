class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def compare_age(paper)
    if self.age < paper.age  
      "#{paper.name} is older than me"
    elsif self.age > paper.age
      "#{paper.name} is younger than me"
    elsif self.age == paper.age
      "#{paper.name} is same of same age"
    end
  end
end

p1 = Person.new("shivkant", 25)
p2 = Person.new("Ankita", 20)
p3 = Person.new("Akansha", 30)
p4 = Person.new("Vikas", 25)

p1.compare_age(p2)
p1.compare_age(p3)
p1.compare_age(p4)
p3.compare_age(p4)