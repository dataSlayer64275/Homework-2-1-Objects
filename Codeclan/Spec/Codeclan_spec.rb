require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../Codeclan.rb')

class StudentTest < MiniTest::Test

def test_get_name
student = Student.new("Billy", "G22")
assert_equal("Billy", student.get_name)
end

def test_get_cohort
student = Student.new("Billy", "G22")
assert_equal("G22", student.get_cohort)
end

def test_update_name
student = Student.new("Billy", "G22")
student.update_name("Malcolm")
assert_equal("Malcolm", student.get_name)
end

def test_update_cohort
student = Student.new("Billy", "G22")
student.update_cohort("E22")
assert_equal("E22", student.get_cohort)
end

def test_talk
  student = Student.new("Billy", "G22")
  assert_equal("I can talk!", student.talk)
end

def test_favourite_language
  student = Student.new("Billy", "G22")
  assert_equal("I love Ruby!", student.favourite_language("Ruby"))
end




end
