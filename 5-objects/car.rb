require 'pry'
# make a car
class Car

  # attr_reader :max_speed
  attr_writer :max_speed

  attr_accessor(:max_speed, :name)
  PURCHASE_AGE = 21
  @@count = 0
  @@all = []

  # self -> Car

  #
  def initialize(name, max_speed)
    # <car @name=>
    @@count += 1
    puts 'vroom'
    @max_speed = max_speed

    @@all << self
  end
  # def Car.all
  def self.all
    # self => Car
    @@all
  end

  def really_fast
    # <>
    puts 'hola'
    max_speed
    # person.foo
  end

  def max_speed
    puts "my speed is #{@max_speed}"
  end

  # def count
  #   @@count
  # end

  def Car.count
    @@count
  end


  # def max_speed
  #   @max_speed
  # end
  # def max_speed=(max_speed)
  #   @max_speed = max_speed
  # end
  #
end

Pry.start
# max speed
# name
