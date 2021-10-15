class GradeClass
  require 'json'

  def initialize
    f = File.read("./grades.json")
    @people = JSON.parse(f)
  end

  def avarage_calc
    @grade_avarage = @people.sum { |item| item['grade'] } / @people.count

    puts "Average grade is #{@grade_avarage}"
    puts "------------------------ \n"
  end

  def calculate
    passed = []
    failed = []
    @people.each do |item|
      if item['grade'] >= @grade_avarage
        passed << item
      else
        failed << item
      end
    end

    failed.each do |item|
      if failed.last == item
        print " and #{item['name']}"
      elsif failed[failed.count - 2] == item
        print "#{item['name']} "
      else
        print "#{item['name']}, "
      end
    end
    puts ' are failed'
    puts "------------------------ \n"

    passed.each do |item|
      if passed.last == item
        print " and #{item['name']}"
      elsif passed[passed.count - 2] == item
        print "#{item['name']} "
      else
        print "#{item['name']}, "
      end
    end
    puts ' are passed'
  end
end

gradeCalc = GradeClass.new
gradeCalc.avarage_calc
gradeCalc.calculate
