class Seed
  attr_reader :seed
  def initialize
    @seed
  end

  def run
    generate_ideas
  end

  def generate_ideas
    Idea.populate(1000000) do |idea|
      idea.title = Faker::Lorem.word
      idea.body = Faker::Lorem.words(10)
      idea.quality = [0, 1, 2]
      puts "Generated idea # #{idea.id}"
    end
  end
end

seed = Seed.new
seed.run
