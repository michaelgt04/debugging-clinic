class StudentRandomizer

  def initialize(mentor_group)
    @mentor_group = mentor_group
  end

  def choose_by_number(number)
    random_generator = Random.new(number)
    group_size = @mentor_group.members.length
    random_index = random_generator.rand(0...group_size)
    puts @mentor_group.members[random_index].name
  end

  def choose_by_string(string)
    seed_number = string.sum
    random_generator = Random.new(seed_number)
    group_size = @mentor_group.members.length
    random_index = random_generator.rand(0...group_size)
    puts @mentor_group.members[random_index].name
  end

  def choose_fairly
    puts 'Eben'
  end
end
