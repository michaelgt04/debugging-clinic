class StudentRandomizer

  def initialize(mentor_group)
    @mentor_group = mentor_group
    @group_size = @mentor_group.members.length
    @chosen_students = []
  end

  def choose_by_number(number, articles)
    random_generator = Random.new(number)
    output_students(random_generator, articles)
  end

  def choose_by_string(string, articles)
    seed_number = string.sum
    random_generator = Random.new(seed_number)
    output_students(random_generator, articles)
  end

  def choose_totally_random(articles)
    random_generator = Random.new
    output_students(random_generator, articles)
  end

  def output_students(random_generator, articles)
    articles.times do
      random_index = random_generator.rand(0...@group_size)
      student = chosen_student(random_index)
      until !@chosen_students.include?(student)
        random_index = random_generator.rand(0...@group_size)
        student = chosen_student(random_index)
      end
      puts student.name
      @chosen_students << student
    end
  end

  def chosen_student(random_index)
    @mentor_group.members[random_index]
  end

end
