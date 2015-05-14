class Monster
	attr_reader :name, :actions

	def initialize(name)
		@name = name
		@actions = {
			screams: 0,
			scares: 0,
			runs: 0,
			hides: 0
		}
	end

	def say(&block)
		print "#{name} says... "
		yield
	end

	def print_scoreboard
		puts "-" * 50
		puts "#{name}'s Scary Action Scoreboard"
		puts "-" * 50
		puts "- Screams: #{actions[:screams]}"
		puts "- Scares: #{actions[:scares]}"
		puts "- Runs: #{actions[:runs]}"
		puts "- Hides: #{actions[:hides]}"
		puts "-" * 50 
	end

	def scream(&block)
		actions[:screams] += 1
		print "#{name} screams! "
		yield
	end

	def scare(&block)
		actions[:scares] += 1
		print "#{name} scared you! "
		yield
	end

		def run(&block)
		actions[:runs] += 1
		print "#{name} runs! "
		yield
	end

		def hide(&block)
		actions[:hides] += 1
		print "#{name} is hiding! "
		yield
	end

end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home."}


monster.scream { puts "BOO!" }

monster.scare { puts "Go away!" }

monster.run { puts "And he is fast!" }

monster.hide { puts "You can't see him!" }

puts "\n"
monster.print_scoreboard