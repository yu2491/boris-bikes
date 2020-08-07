require_relative 'bike'

class DockingStation

	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def release_bike
		@bikes.delete_if { |bike| bike.broken? }
    fail 'No bikes available' if empty?
		@bikes.pop
  end

	def dock(bike)
		fail 'Docking station full' if full?
		@bikes << bike
	end

	attr_reader :bike, :capacity

	private
	def full?
		@bikes.count >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.empty?
	end

end
