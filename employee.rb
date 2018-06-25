class Employee
  attr_reader :name, :title, :salary, :boss
  
  def initialize(name, title, salary, boss=nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
    
  def bonus(multiplier)
    if self.is_a?(Manager)
      total_salary = []
      employees.each do |el|
        total_salary << el.salary 
      end 
      (total_salary.reduce(:+)) * multiplier
    else
      self.salary * multiplier
    end 
  end 
  
  
end

class Manager < Employee  
  attr_reader :employees 
  def initialize(name, title, salary, boss, employees)
    super(name, title, salary, boss)
    @employees = employees
    
  end 
  
end 

if $PROGRAM_NAME == __FILE__
  david = Employee.new("David", "TA", 10000, "Darren")
  shawna = Employee.new("Shawna", "TA", 12000, "Darren")
  darren = Manager.new("Darren", "TA Manager", 78000, "Ned", [david, shawna])
  ned = Manager.new("Ned", "Founder", 1000000, nil, [david, shawna, darren])
  
  p ned.bonus(5)
  
end 

