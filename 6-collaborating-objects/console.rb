require_relative 'environment.rb'
# require_relative 'seed.rb'

def reload!
  load './environment.rb'
end

Pry.start
