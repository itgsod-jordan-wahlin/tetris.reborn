require 'chingu'

class Game < Chingu::Window

#constructor
def initialize
super
self.input = {esc: :exit}
@player = Player.create
end
end

class Player < Chingu::GameObject

	#meta-constructor
	def setup
		@x, @y = 750, 400
		@image = Gosu::Image["ship.png"]
		@speed = 4
		self.input = {
			holding_left: :left,
			holding_right: :right,
			holding_up: :up,
			holding_down: :down
		}
	end

	def left
		unless @x <= 0
		@x -= @speed
		end
	end

	def right
		unless @x <= 640
		@x += @speed
		end
	end

	def up
		unless @y <= 0
		@x -= @speed
		end
	end

	def down
		unless @y <= 600
		@x += @speed
		end
	end


end

Game.new.show

