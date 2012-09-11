require 'mathn'

module GridMap

	EARTH_RADIUS = 6378137 # meters

	def self.to_rad angle
	  angle/180 * Math::PI
	end

	def self.distance lat1, lon1, lat2, lon2
		Math::acos(
			(Math::sin(to_rad(lat1)) * Math::sin(to_rad(lat2))) +
			(Math::cos(to_rad(lat1)) * Math::cos(to_rad(lat2))) * Math::cos(to_rad(lon2)-to_rad(lon1))
		) * EARTH_RADIUS
	end

	def self.square radius, lat, lon, array = false
		r = radius*2/3
		x = (distance(lat, lon, 90, 0)/r).ceil
		y = (distance(lat, lon, 0, 180)/r).ceil
		[x, y] if array
		{x: x, y: y}
	end
end
