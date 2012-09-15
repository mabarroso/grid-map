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
		r = radius/3
		x = (distance(0, 0, lat, 0)/r).ceil
		y = (distance(0, 0, 0, lon)/r).ceil
		return [x, y] if array
		{x: x, y: y}
	end
end
