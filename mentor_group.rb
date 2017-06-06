class MentorGroup
  attr_reader :members, :name

  def initialize(name, members = [])
    @name = name
    @members = members
  end

  def fill_mentor_group(array_of_students)
    array_of_students.each do |student|
      @members << student
    end
  end
end
